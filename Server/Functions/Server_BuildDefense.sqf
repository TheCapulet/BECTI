/*
  # HEADER #
	Script: 		Server\Functions\Server_BuildDefense.sqf
	Alias:			CTI_SE_FNC_BuildDefense
	Description:	Construct a defense at a given position
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[String]: The defense variable name
    1	[Side]: The Side which requested it
    2	[Array]: The position of the defense
    3	[Number]: The direction of the defense
    4	[Boolean]: Determine if an alignment is needed for walls
    5	{Optionnal} [Boolean]: Determine if the defense shall be manned or not
	
  # RETURNED VALUE #
	[Object]: The constructed defense
	
  # SYNTAX #
	[DEFENSE VARIABLE, SIDE, POSITION, DIRECTION, AUTOALIGN, MANNED] call CTI_SE_FNC_BuildDefense
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Server Function: CTI_SE_FNC_HandleStaticDefenses
	Server Function: funcCalcAlignPosDir
	
  # EXAMPLE #
    _defense = [_variable, CTI_P_SideJoined, [_pos select 0, _pos select 1], _dir, CTI_P_WallsAutoAlign, CTI_P_DefensesAutoManning] call CTI_SE_FNC_BuildDefense;
*/

params ["_varname", "_side", "_position", "_direction", "_autoalign", ["_manned", false]];
private ["_defense", "_direction_structure", "_fob", "_limit", "_logic", "_ruins", "_seed", "_sideID", "_stronger", "_var"];

_var = missionNamespace getVariable _varname;
_seed = time + random 10000 - random 500 + diag_frameno;

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sideID = (_side) call CTI_CO_FNC_GetSideID;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_BuildDefense.sqf", format["Received Defense build request [%1] from side [%2] for a [%3] structure at position [%4], manned? [%5]", _seed, _side, _var select CTI_DEFENSE_CLASS, _position, _manned]] call CTI_CO_FNC_Log;
};

//--- Is it a fob?
_fob = false;
_limit = false;
{if (_x select 0 isEqualTo "FOB") exitWith {_fob = true}} forEach (_var select CTI_DEFENSE_SPECIALS);
if (_fob) then {if (count(_logic getVariable "cti_fobs") >= CTI_BASE_FOB_MAX) then {_limit = true}};
if (_limit) exitWith {};

_position set [2, 0];

_defense = (_var select CTI_DEFENSE_CLASS) createVehicle _position;
_defense setVariable ["cti_defense_sideID", _sideID, true]; //--- Track the defense by giving it a sideID

_direction_structure = (_var select CTI_DEFENSE_PLACEMENT) select 0;

if (_defense isKindOf "Building") then {
	if (_autoalign) then {
		private ["_autoSupport", "_correction", "_offsetZ", "_width"];
		_autoSupport = [];
		{if (_x select 0 isEqualTo "CanAutoAlign") exitWith {_autoSupport = _x}} forEach (_var select CTI_DEFENSE_SPECIALS);
		
		if (count _autoSupport > 0) then {
			_width = _autoSupport select 1;
			_offsetZ = _autoSupport select 2; //todo
			_correction = [_defense, _position, _direction, _width, _offsetZ, _direction_structure] call funcCalcAlignPosDir;
			_position = _correction select 0;
			_direction = _correction select 1;
		};
	};
};

if (_fob) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_BuildDefense.sqf", format["A FOB [%1] has been added to side [%2] following defense request [%3]", _var select CTI_DEFENSE_CLASS, _side, _seed]] call CTI_CO_FNC_Log;
	};
	
	(_defense) remoteExec ["CTI_PVF_CLT_OnFOBDeployment", _side];
	
	_fobs = _logic getVariable "cti_fobs";
	_fobs pushBack _defense;
	_logic setVariable ["cti_fobs", _fobs, true];
};

_defense setDir _direction;
_defense setPos _position;
if !(_defense isKindOf "Building") then {_defense setVectorUp surfaceNormal position _defense};
if (_defense emptyPositions "gunner" < 1 && !_fob) then { //--- Soft defense
	_defense setDir _direction;
	// _defense setVectorUp surfaceNormal position _defense;
};

//--- Make the defense stronger?
_stronger = -1;
{if (_x select 0 isEqualTo "DMG_Reduce") exitWith {_stronger = _x select 1}} forEach (_var select CTI_DEFENSE_SPECIALS);
if !(_stronger isEqualTo -1) then {_defense addEventHandler ["handleDamage", format["getDammage (_this select 0)+(_this select 2)/%1",_stronger]]};

//--- Check if the defense has a ruin model attached (we don't wana have a cemetery of wrecks)
_ruins = "";
{if (_x select 0 isEqualTo "RuinOnDestroyed") exitWith {_ruins = _x select 1}} forEach (_var select CTI_DEFENSE_SPECIALS);

_defense addEventHandler ["killed", format["[_this select 0, _this select 1, %1, '%2', '%3'] spawn CTI_SE_FNC_OnDefenseDestroyed", _sideID, _ruins, _varname]];

if (_defense emptyPositions "gunner" > 0) then { //--- Hard defense
	//todo: determine if the defense is "auto" or not via config simulation
	[_defense, CTI_BASE_DEFENSES_EMPTY_TIMEOUT] spawn CTI_SE_FNC_HandleEmptyVehicle; //--- Track the defense lifespan
	
	//--- The defense is eligible for auto manning
	if (_manned && CTI_BASE_DEFENSES_AUTO_MODE > 0) then {_defense setVariable ["cti_aman_enabled", true]};
	
	//--- The defense may be an artillery piece, if so we track it
	if (CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY > -1 && getNumber(configFile >> "CfgVehicles" >> (_var select CTI_DEFENSE_CLASS) >> "artilleryScanner") > 0) then {
		(_defense) remoteExec ["CTI_PVF_CLT_OnArtilleryPieceTracked", CTI_PV_CLIENTS];
	};
};

//--- ZEUS Curator Editable
if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_defense], true]};

_defense