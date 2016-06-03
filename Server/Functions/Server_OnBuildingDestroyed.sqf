/*
  # HEADER #
	Script: 		Server\Functions\Server_OnBuildingDestroyed.sqf
	Alias:			CTI_SE_FNC_OnBuildingDestroyed
	Description:	Triggered by the Killed EH whenever a structure get destroyed
					Note this function shall be called by an Event Handler (EH) but can also be called manually
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:  16-10-2013
	
  # PARAMETERS #
    0	[Object]: The destroyed structure
    1	[Object]: The killer
    2	[String]: The structure variable name
    3	[Intenger]: The Side ID of the structure
    4	[Array]: The position of the structure
    5	[Number]: The direction
    6	[Number]: The current completion speed ratio
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[KILLED, KILLER, STRUCTURE VARIABLE, SIDE ID, POSITION, DIRECTION, COMPLETION RATIO] spawn CTI_SE_FNC_OnBuildingDestroyed
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_NetSend
	Server Function: CTI_SE_FNC_HandleStructureConstruction
	
  # EXAMPLE #
    [_damaged, _shooter, _variable, _sideID, _position, _direction, _completion_ratio] spawn CTI_SE_FNC_OnBuildingDestroyed
*/

private ["_classnames", "_completion_ratio", "_direction", "_killed", "_killer", "_logic", "_position", "_sell", "_side", "_sideID", "_structure", "_var", "_variable"];

_killed = _this select 0;
_killer = _this select 1;
_variable = _this select 2;
_sideID = _this select 3;
_position = _this select 4;
_direction = _this select 5;
_completion_ratio = _this select 6;

_side = (_sideID) call CTI_CO_FNC_GetSideFromID;
_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sell = if (isNil {_killed getVariable "cti_sell"}) then {false} else {true};

// bistery: a damaged structure will not trigger the EH assigned to the original one! will it get fixed? nop!
_logic setVariable ["cti_structures", (_logic getVariable "cti_structures") - [_killed, objNull], true];
_var = missionNamespace getVariable _variable;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnBuildingDestroyed.sqf", format["A [%1] from side [%2] was destroyed by [%3] at position [%4], was it sold? [%5]", (_var select 0) select 1, _side, _killer, _position, _sell]] call CTI_CO_FNC_Log;
};

//--- The structure was not sold
if !(_sell) then {
	//--- Replace with ruins
	_structure = ((_var select 1) select 1) createVehicle _position;
	_structure setDir _direction;
	_structure setPos _position;
	_structure setDir _direction;
	_structure setVectorUp [0,0,0];

	_structure setVariable ["cti_completion", 10];
	_structure setVariable ["cti_completion_ratio", _completion_ratio * CTI_BASE_CONSTRUCTION_RATIO_ON_DEATH];
	// _structure setVariable ["cti_structures_iteration", round(CTI_BASE_WORKERS_BUILD_COEFFICIENT / ((_var select 3)/100))];
	_structure setVariable ["cti_structures_iteration", (_var select 3)/100];
	_structure setVariable ["cti_structure_type", ((_var select 0) select 0)];

	[_side, _structure, _variable, _position, _direction, true] spawn CTI_SE_FNC_HandleStructureConstruction;

	_logic setVariable ["cti_structures_wip", (_logic getVariable "cti_structures_wip") + [_structure] - [objNull]];
	
	//--- Bounty
	if !(isNull _killer) then {
		if (side _killer != sideEnemy && side _killer != _side && (group _killer) call CTI_CO_FNC_IsGroupPlayable) then {
			if (isPlayer _killer) then {
				_label = ((_var select 0) select 1);
				_award = round((_var select 2) * CTI_BASE_CONSTRUCTION_BOUNTY);
				
				[["CLIENT", _killer], "Client_AwardBountyStructure", [_label, _award]] call CTI_CO_FNC_NetSend;
				["CLIENT", "Client_OnMessageReceived", ["structure-destroyed", [name _killer, _label]]] call CTI_CO_FNC_NetSend;
			} else {
				//--- AI Reward
			};
		};
	};
	
	// diag_log format ["DEBUG:: Server_OnBuildingDestroyed.sqf:: structure %1 on side %2 was destroyed (not sold), killer %3", ((_var select 1) select 1), _sideID, _killer];
} else { //--- The structure was sold
	private ["_areas", "_closest", "_delete_pos", "_need_update", "_structures_positions"];
	//--- We update the base area array to remove potential empty areas. First we get the 2D positions of our structures
	_areas = _logic getVariable "cti_structures_areas";
	_structures_positions = [];
	{
		_pos = getPos _x;
		_pos = [_pos select 0, _pos select 1];
		_structures_positions pushBack _pos;
	} forEach ((_side call CTI_CO_FNC_GetSideStructures) + (_logic getVariable "cti_structures_wip"));

	//--- Check for empty areas now
	_need_update = false;
	_delete_pos = [];
	{
		_closest = [_x, _structures_positions] call CTI_CO_FNC_GetClosestEntity;
		if (_closest distance _x > CTI_BASE_AREA_RANGE) then {_need_update = true; _delete_pos pushBack _x; _areas set [_forEachIndex, "!nil!"]};
		// if (_closest distance _x > CTI_BASE_AREA_RANGE) then {_need_update = true; _areas deleteAt _forEachIndex};
	} forEach +_areas;

	//--- Only update if we have to
	if (_need_update) then {
		_areas = _areas - ["!nil!"];
		_logic setVariable ["cti_structures_areas", _areas, true];
		
		//--- Wipe the defense/structures upon area expiration
		{
			{
				if !(isNil {_x getVariable "cti_managed"}) then {deleteVehicle _x};
			} forEach (nearestObjects [_x, missionNamespace getVariable format ["CTI_%1_DEFENSES_NAMES", _side], CTI_BASE_AREA_RANGE]);
		} forEach _delete_pos;
	};
};

sleep 5;
deleteVehicle _killed;

_classnames = _var select 1;
_classnames = if (count _classnames > 2) then {[_classnames select 1] + (_classnames select 2)} else {[_classnames select 1]};

{if (isNil {_x getVariable "cti_completion"}) then { deleteVehicle _x }} forEach (nearestObjects [_position, _classnames, 25]);

[["CLIENT", _side], "Client_OnStructureKilled", [_position, _variable, _sell]] call CTI_CO_FNC_NetSend;
["CLIENT", "Client_RemoveRuins", [_position, _variable]] call CTI_CO_FNC_NetSend;
