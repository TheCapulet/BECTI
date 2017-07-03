_side = _this;

_names = [];
_label = [];
_members = [];
_factories = [];

//--- Infantry Templates
_names pushBack "Infantry";
_label pushBack "Infantry Squad";
_members pushBack [["O_Soldier_F", "O_soldier_AR_F", "O_medic_F", "O_soldier_LAT_F", "O_Soldier_GL_F", "O_sniper_F", "O_soldier_M_F"], [1.75, 1, 0.8, 1.2, 1, 0.4, 0.5]];
_factories pushBack CTI_BARRACKS;

_names pushBack "InfantryLAT";
_label pushBack "Infantry LAT Squad";
_members pushBack [["O_soldier_LAT_F", "O_medic_F"], [2.7, 0.25]];
_factories pushBack CTI_BARRACKS;

_names pushBack "InfantryAT";
_label pushBack "Infantry AT Squad";
_members pushBack [["O_soldier_AT_F", "O_medic_F", "O_soldier_LAT_F"], [3, 0.25, 1.5]];
_factories pushBack CTI_BARRACKS;

_names pushBack "InfantryAA";
_label pushBack "Infantry AA Squad";
_members pushBack [["O_soldier_AA_F", "O_medic_F", "O_soldier_LAT_F"], [3, 0.25, 0.5]];
_factories pushBack CTI_BARRACKS;

_names pushBack "InfantryRanged";
_label pushBack "Snipers";
_members pushBack [["O_sniper_F", "O_soldier_M_F"], [2, 1]];
_factories pushBack CTI_BARRACKS;

//--- Light vehicles templates
_names pushBack "Motorized";
_label pushBack "Motorized MRAP";
_members pushBack [["O_MRAP_02_hmg_F", "O_MRAP_02_gmg_F"], [1.75, 1]];
_factories pushBack CTI_LIGHT;

//--- Heavy vehicles templates
_names pushBack "Mechanized";
_label pushBack "Mechanized APC";
_members pushBack [["O_APC_Tracked_02_cannon_F", "O_APC_Wheeled_02_rcws_F"], [1.8, 1]];
_factories pushBack CTI_HEAVY;

_names pushBack "MechanizedTracked";
_label pushBack "Mechanized APC (Heavy)";
_members pushBack [["O_APC_Wheeled_02_rcws_F"], [1]];
_factories pushBack CTI_HEAVY;

_names pushBack "Armored";
_label pushBack "Armored - MBT";
_members pushBack [["O_MBT_02_cannon_F"], [1]];
_factories pushBack CTI_HEAVY;

_names pushBack "AntiAir";
_label pushBack "Armored - Anti Air";
_members pushBack [["O_APC_Tracked_02_AA_F"], [1]];
_factories pushBack CTI_HEAVY;

//--- Aircraft templates
_names pushBack "AirAttack";
_label pushBack "Air - Attack Helicopter";
_members pushBack [["O_Heli_Attack_02_F"], [1]];
_factories pushBack CTI_AIR;

//--- AI Commander variables
if (isServer) then {
	//--- Format is <Squad Template Name>, <Weight>, <Maximum % of squad using the template (-1 = no limits, empty array will skip it)>, <Condition>
	//--- If no conditions can be met, the AI commander will use the first element if present
	missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_INFANTRY", _side], [
		[["Infantry", "InfantryLAT"], [1.3, 1], compile format["([%1, CTI_UPGRADE_GEAR] call CTI_CO_FNC_GetUpgrade) < 1", _side]],
		[["Infantry", "InfantryAT", "InfantryAA", "InfantryRanged"], [2, 1.25, .25, .55], compile format["([%1, CTI_UPGRADE_GEAR] call CTI_CO_FNC_GetUpgrade) > 0", _side]]
	]];
	
	missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_LIGHT", _side], [
		[["Motorized"], [1], {true}]
	]];
	
	missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_HEAVY", _side], [
		[["MechanizedTracked", "Armored"], [1, .75], compile format["([%1, CTI_UPGRADE_HEAVY] call CTI_CO_FNC_GetUpgrade) < 1", _side]],
		[["Mechanized", "AntiAir", "MechanizedTracked", "Armored"], [.8, .3, .8, 2.4], compile format["([%1, CTI_UPGRADE_HEAVY] call CTI_CO_FNC_GetUpgrade) > 1", _side]]
	]];
	
	missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_AIR", _side], [
		[["AirAttack"], [1], {true}]
	]];
	
	// missionNamespace setVariable [format["CTI_SQUADS_%1_TOWN_DEFENSE", _side], ["InfantryAT", "InfantryAA"]]; // USED BY UPDATECOMMANDER FSM as valid types for base defenses
};

[_side, _names, _label, _members, _factories] call compile preprocessFileLineNumbers "Common\Config\Squads\Squads_Set.sqf";