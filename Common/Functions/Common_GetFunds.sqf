/*
  # HEADER #
	Script: 		Common\Functions\Common_GetFunds.sqf
	Alias:			CTI_CO_FNC_GetFunds
	Description:	Get the funds of a group. 0 by default
					Note that if the group is the commander's then
					we retrieve the commander funds
	Author: 		Benny
	Creation Date:	09-10-2013
	Revision Date:	29-04-2016
	
  # PARAMETERS #
    0	[Group]: The group
	
  # RETURNED VALUE #
	[Number]: The group's funds
	
  # SYNTAX #
	(GROUP) call CTI_CO_FNC_GetFunds
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetFundsCommander
	Common Function: CTI_CO_FNC_IsGroupCommander
	
  # EXAMPLE #
    _funds = (group player) call CTI_CO_FNC_GetFunds
*/

private ["_funds", "_group", "_side"];

_group = _this;
_side = side _group;

_funds = 0;
if (_group call CTI_CO_FNC_IsGroupCommander) then {
	(_side) call CTI_CO_FNC_GetFundsCommander;
} else {
	diag_log format ["DEBUG CTI_CO_FNC_GetFunds -> group [%1], group side [%2], funds [%3]", _group, _side, _funds];
	if !(isNil {_group getVariable "cti_funds"}) then {_funds = _group getVariable "cti_funds"};
};

_funds