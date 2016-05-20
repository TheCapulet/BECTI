with missionNamespace do {
	//--- Infantry
	WEST_SOLDIER = ["B_Soldier_F", 1];
	WEST_SOLDIER_AA = ["B_soldier_AA_F", 1];
	WEST_SOLDIER_AR = ["B_Soldier_AR_F", 1];
	WEST_SOLDIER_AT = ["B_Soldier_LAT_F", 1];
	WEST_SOLDIER_CREW = ["B_crew_F", 1];
	WEST_SOLDIER_LAT = ["B_Soldier_LAT_F", 1];
	WEST_SOLDIER_HAT = ["B_Soldier_AT_F", 1];
	WEST_SOLDIER_ENGINEER = ["B_engineer_F", 1];
	WEST_SOLDIER_GL = ["B_Soldier_GL_F", 1];
	WEST_SOLDIER_MEDIC = ["B_medic_F", 1];
	// WEST_SOLDIER_MG = "soldiermg";
	WEST_SOLDIER_PILOT = ["B_helipilot_F", 1];
	WEST_SOLDIER_SQUADLEADER = ["B_Soldier_SL_F", 1];
	WEST_SOLDIER_SNIPER = ["B_Soldier_M_F", 1];
	WEST_SOLDIER_TEAMLEADER = ["B_Soldier_TL_F", 1];
	
	//--- Vehicles
	WEST_MOTORIZED_MG = ["B_MRAP_01_hmg_F", 2];
	WEST_MOTORIZED_GL = ["B_MRAP_01_gmg_F", 2];

	//--- Infantry - Mixed
	// WEST_SOLDIERS_MG = [WEST_SOLDIER_MG, WEST_SOLDIER_AR];
	WEST_SOLDIERS_MG = [WEST_SOLDIER_AR];
	WEST_SOLDIERS_AT_LIGHT = [WEST_SOLDIER_LAT, WEST_SOLDIER_AT];
	WEST_SOLDIERS_AT_MEDIUM = [WEST_SOLDIER_AT, WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_AT_HEAVY = [WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_SPECOPS = [["B_Soldier_exp_F", 1]];
	WEST_SOLDIERS_ENGINEER = [WEST_SOLDIER_ENGINEER, ["B_Soldier_repair_F", 1]];
	WEST_SOLDIERS_SNIPERS = [WEST_SOLDIER_SNIPER, ["B_Spotter_F", 1], ["B_Sniper_F", 1]];

	//--- Vehicles
	WEST_VEHICLE_AA = [["B_APC_Tracked_01_AA_F", 1]];
	WEST_VEHICLE_APC = [["B_APC_Wheeled_01_cannon_F", 2], ["B_APC_Tracked_01_rcws_F", 2]];
	// WEST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	WEST_VEHICLE_ARMORED_LIGHT = [["B_MBT_01_cannon_F", 2]];
	// WEST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	WEST_VEHICLE_MOTORIZED = [WEST_MOTORIZED_MG, WEST_MOTORIZED_GL, WEST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	WEST_VEHICLES_AA_LIGHT = WEST_VEHICLE_AA;
	// WEST_VEHICLES_LIGHT = WEST_VEHICLE_MECHANIZED + WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_LIGHT = WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_MEDIUM = WEST_VEHICLE_APC + WEST_VEHICLE_ARMORED_LIGHT;
	WEST_VEHICLES_HEAVY = WEST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	WEST_TOWNS_AAV = ["B_APC_Tracked_01_AA_F"];
	WEST_TOWNS_AAV_HEAVY = ["B_APC_Tracked_01_AA_F", "B_APC_Tracked_01_AA_F"];
	WEST_TOWNS_APC_LIGHT = ["B_APC_Wheeled_01_cannon_F"];
	WEST_TOWNS_APC_MEDIUM = ["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F"];
	WEST_TOWNS_APC_HEAVY = ["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Wheeled_01_cannon_F"];
	WEST_TOWNS_MOTORIZED_MIXED_HEAVY = ["B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
	WEST_TOWNS_MOTORIZED_MIXED_LIGHT = ["B_MRAP_01_hmg_F","B_MRAP_01_gmg_F"];
	WEST_TOWNS_MOTORIZED_HMG = ["B_MRAP_01_hmg_F","B_MRAP_01_hmg_F"];
	WEST_TOWNS_MOTORIZED_GMG = ["B_MRAP_01_gmg_F","B_MRAP_01_gmg_F"];
	WEST_TOWNS_SPECIAL = ["B_Soldier_exp_F", "B_Soldier_exp_F", "B_Soldier_exp_F"];
	WEST_TOWNS_SQUAD_LIGHT = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_LAT_F", "B_Soldier_GL_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_LIGHT_2 = ["B_Soldier_SL_F", "B_Soldier_GL_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_engineer_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_MEDIUM = ["B_Soldier_SL_F", "B_Soldier_GL_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_Soldier_AT_F", "B_engineer_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_AT = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_LAT_F", "B_Soldier_AT_F", "B_Soldier_M_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_AA = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_AR_F", "B_soldier_AA_F", "B_soldier_AA_F", "B_engineer_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_APC_1 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_APC_Tracked_01_rcws_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SQUAD_APC_2 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_APC_Wheeled_01_cannon_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SQUAD_MOTORIZED_1 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_MRAP_01_hmg_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SQUAD_MOTORIZED_2 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_AT_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_MRAP_01_hmg_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SNIPERS_1 = ["B_Soldier_M_F", "B_Soldier_M_F", "B_Soldier_M_F", "B_Spotter_F"];
	WEST_TOWNS_SNIPERS_2 = ["B_Soldier_M_F", "B_Soldier_M_F", "B_Soldier_exp_F", "B_Spotter_F"];
	WEST_TOWNS_TANKS_LIGHT = ["B_MBT_01_cannon_F"];
	WEST_TOWNS_TANKS_MEDIUM = ["B_MBT_01_cannon_F", "B_MBT_01_cannon_F"];
	WEST_TOWNS_TANKS_HEAVY = ["B_MBT_01_cannon_F", "B_MBT_01_cannon_F", "B_MBT_01_cannon_F"];
	
	//--- Naval Units
	WEST_TOWNS_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_TOWNS_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	WEST_TOWNS_NAVAL_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_LARGE_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	//--- Naval Teams Templates
	WEST_TOWNS_NAVAL_SQUAD_1 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_2 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AA_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_3 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AA_F", "B_Soldier_AA_F", "B_Soldier_AA_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};