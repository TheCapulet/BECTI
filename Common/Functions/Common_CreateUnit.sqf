/*
  # HEADER #
	Script: 		Common\Functions\Common_CreateUnit.sqf
	Alias:			CTI_CO_FNC_CreateUnit
	Description:	Create a simple unit for a group
					Note that making a unit public with the _net variable will make it
					undergo the function CTI_CO_FNC_InitializeNetVehicle
					A public unit is initialized for all (+JIP) but the server
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[String]: The type of unit to create
    1	[Group]: The team that the unit should belong to
    2	[Array/Object]: The position where the unit should be created at
    3	[Side/Integer]: The Side or Side ID of the unit
    4	{Optionnal} [Boolean]: Determine if the unit should be "public" or not
    5	{Optionnal} [String]: Set a special spawn mode for the unit
	
  # RETURNED VALUE #
	[Object]: The created unit
	
  # SYNTAX #
	[CLASSNAME, GROUP, POSITION, SIDE] call CTI_CO_FNC_CreateUnit
	[CLASSNAME, GROUP, POSITION, SIDE, PUBLIC] call CTI_CO_FNC_CreateUnit
	[CLASSNAME, GROUP, POSITION, SIDE, PUBLIC, SPECIAL] call CTI_CO_FNC_CreateUnit
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
	_unit = ["B_Soldier_F", group player, getPos player, CTI_P_SideJoined] call CTI_CO_FNC_CreateUnit; 
	  -> Create a "B_Soldier_F" at the player's position
	_unit = ["B_Soldier_F", group player, getPos player, CTI_P_SideJoined, true, "NONE"] call CTI_CO_FNC_CreateUnit; 
	  -> Create a "B_Soldier_F" at the player's position, initialize it over the network and ignore the formation on creation
*/

params ["_classname", "_group", "_position", "_sideID", ["_net", false], ["_special", "FORM"]];
private ["_unit"];

if (CTI_Log_Level >= CTI_Log_Debug) then {
	["DEBUG", "FILE: Common\Functions\Common_CreateUnit.sqf", format["Attempting to create a [%1] unit on team [%2] at position [%3] on side [%4], net? [%5] special? [%6]", _classname, _group, _position, _sideID, _net, _special]] call CTI_CO_FNC_Log;
};

if (typeName _position isEqualTo "OBJECT") then {_position = getPos _position};
if (typeName _sideID isEqualTo "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

_unit = _group createUnit [_classname, _position, [], 0, _special];
_unit setSkill (0.3 + (random 0.5));//todo tweak/improve

if (_net) then {_unit setVariable ["cti_net", _sideID, true]};

//--- Add a Killed EH.
_unit addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]];

//--- ZEUS Curator Editable
if !(isNil "ADMIN_ZEUS") then {
	if (CTI_IsServer) then {
		ADMIN_ZEUS addCuratorEditableObjects [[_unit], true];
	} else {
		[ADMIN_ZEUS, _unit] remoteExec ["CTI_PVF_SRV_RequestAddCuratorEditable", CTI_PV_SERVER];
	};
};

_unit