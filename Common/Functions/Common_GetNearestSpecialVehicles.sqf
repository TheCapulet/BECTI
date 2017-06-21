/*
  # HEADER #
	Script: 		Common\Functions\Common_GetNearestSpecialVehicles.sqf
	Alias:			CTI_CO_FNC_GetNearestSpecialVehicles
	Description:	Get special nearest vehicles (like repair or rearm trucks)
	Author: 		Benny
	Creation Date:	17-10-2013
	Revision Date:	17-10-2013
	
  # PARAMETERS #
    0	[Object/Array]: The center
    1	[Integer]: The ID of the special vehicle to search for
    2	[Number]: The range to look for the special vehicles
	
  # RETURNED VALUE #
	[Array]: The nearby special vehicles
	
  # SYNTAX #
	[POSITION / OBJECT, ID, RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles
	
  # EXAMPLE #
    _vehicles = [vehicle player, CTI_SPECIAL_REPAIRTRUCK, 100] call CTI_CO_FNC_GetNearestSpecialVehicles;
*/

params ["_center", "_type", "_range"];
private ["_available", "_spec"];

_available = [];
{
	if !(isNil {_x getVariable "cti_spec"}) then {
		_spec = _x getVariable "cti_spec";
		if (typeName _spec != "ARRAY") then {_spec = [_spec]};
		if (_type in _spec && getPos _x select 2 < 5) then {_available pushBack _x};
	};
} forEach (_center nearEntities [["Car", "Ship", "Motorcycle", "Tank", "Air"], _range]);

_available