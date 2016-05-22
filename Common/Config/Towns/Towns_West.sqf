with missionNamespace do {
if (CTI_TOWNS_OCCUPATION_WEST == 0) then { 
//--- VANILLA TOWN OCCUPATION
//--- Infantry
	WEST_SOLDIER = ["B_Soldier_F"];
	WEST_SOLDIER_AA = ["B_soldier_AA_F"];
	WEST_SOLDIER_AR = ["B_Soldier_AR_F"];
	WEST_SOLDIER_AT = ["B_Soldier_LAT_F"];
	WEST_SOLDIER_CREW = ["B_crew_F"];
	WEST_SOLDIER_LAT = ["B_Soldier_LAT_F"];
	WEST_SOLDIER_HAT = ["B_Soldier_AT_F"];
	WEST_SOLDIER_ENGINEER = ["B_engineer_F"];
	WEST_SOLDIER_GL = ["B_Soldier_GL_F"];
	WEST_SOLDIER_MEDIC = ["B_medic_F"];
	WEST_SOLDIER_MG = "B_HeavyGunner_F";
	WEST_SOLDIER_PILOT = ["B_helipilot_F"];
	WEST_SOLDIER_SNIPER = ["B_Soldier_M_F"];
	WEST_SOLDIER_TEAMLEADER = ["B_Soldier_TL_F"];
	WEST_SOLDIER_SQUADLEADER = ["B_Soldier_SL_F"];
	//--- Naval Units
	WEST_SOLDIER_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_SOLDIER_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	//--- Light Vehicles
	WEST_VEHICLE_LIGHT1 = ["B_G_Offroad_01_armed_F"];
	WEST_VEHICLE_LIGHT2 = ["B_MRAP_01_hmg_F"];
	WEST_VEHICLE_LIGHT3 = ["B_MRAP_01_hmg_F"];
	WEST_VEHICLE_LIGHT4 = ["B_MRAP_01_gmg_F"];
	//--- APCs
	WEST_VEHICLE_APC1 = ["B_APC_Tracked_01_rcws_F"];
	WEST_VEHICLE_APC2 = ["B_APC_Wheeled_01_cannon_F"];
	WEST_VEHICLE_APC3 = ["B_APC_Wheeled_01_cannon_F"];
	//--- Tanks
	WEST_VEHICLE_ARMORED1 = ["B_MBT_01_cannon_F"];	
	WEST_VEHICLE_ARMORED2 = ["B_MBT_01_TUSK_F"];
	WEST_VEHICLE_ARMORED3 = ["B_MBT_01_TUSK_F"];
	//--- AA Vehicles
	WEST_VEHICLE_AA = ["B_APC_Tracked_01_AA_F"];
	WEST_VEHICLE_AA = ["B_APC_Tracked_01_AA_F"];
	WEST_VEHICLE_AA = ["B_APC_Tracked_01_AA_F"];
	//--- Air
	WEST_AIR_HELI1 = ["B_Heli_Light_01_armed_F"]; //pawnee
	WEST_AIR_HELI2 = ["B_Heli_Transport_01_F"]; //ghosthawk
	WEST_AIR_HELI_ATTACK = ["B_Heli_Attack_01_F"];
	WEST_AIR_AA = [""];
	WEST_AIR_CAS = ["B_Plane_CAS_01_F"];
	//--- Boats
	WEST_NAVAL_ASSAULT_BOAT1 = ["B_Boat_Armed_01_minigun_F"];
	WEST_NAVAL_ASSAULT_BOAT2 = ["B_Boat_Armed_01_minigun_F"];
	WEST_NAVAL_MEDIUM_ASSAULT_BOAT = [""];
	WEST_NAVAL_LARGE_ASSAULT_BOAT = [""];
	//---Manual Set SQUAD - odd bug
	WEST_TOWNS_SQUAD_NAVAL1 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F"];
	WEST_TOWNS_SQUAD_NAVAL2 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AA_F"];
	WEST_TOWNS_SQUAD_NAVAL3 = ["I_diver_TL_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AT_F", "I_Soldier_AA_F", "I_Soldier_AA_F"];
};
if (CTI_TOWNS_OCCUPATION_WEST == 1) then { 
//--- CUP TOWN OCCUPATION
	//--- Infantry
	WEST_SOLDIER = ["CUP_B_US_Soldier"];
	WEST_SOLDIER_AA = ["CUP_B_US_Soldier_AA"];
	WEST_SOLDIER_AR = ["CUP_B_US_Soldier_AR"];
	WEST_SOLDIER_AT = ["CUP_B_US_Soldier_AT"];
	WEST_SOLDIER_CREW = ["CUP_B_US_Crew"];
	WEST_SOLDIER_LAT = ["CUP_B_US_Soldier_AT"];
	WEST_SOLDIER_HAT = ["CUP_B_US_Soldier_HAT"];
	WEST_SOLDIER_ENGINEER = ["CUP_B_US_Soldier_Engineer_EOD"];
	WEST_SOLDIER_GL = ["CUP_B_US_Soldier_GL"];
	WEST_SOLDIER_MEDIC = ["CUP_B_US_Medic"];
	WEST_SOLDIER_MG = "CUP_B_US_Soldier_AR";
	WEST_SOLDIER_PILOT = ["CUP_B_US_Pilot"];
	WEST_SOLDIER_SNIPER = ["CUP_B_US_Sniper_M107"];
	WEST_SOLDIER_TEAMLEADER = ["CUP_B_US_Officer"];
	WEST_SOLDIER_SQUADLEADER = ["CUP_B_US_Officer"];
	//--- Naval Units
	WEST_SOLDIER_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_SOLDIER_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	//--- Light Vehicles
	WEST_VEHICLE_LIGHT1 = ["CUP_B_HMMWV_DSHKM_GPK_ACR"];
	WEST_VEHICLE_LIGHT2 = ["CUP_B_Jackal2_L2A1_GB_D"];
	WEST_VEHICLE_LIGHT3 = ["CUP_RG31_M2"];
	WEST_VEHICLE_LIGHT4 = ["CUP_B_Dingo_GL_CZ_Wdl"];
	WEST_VEHICLE_LIGHT5 = ["CUP_B_Ridgback_GMG_GB_D"];
	WEST_VEHICLE_LIGHT6 = ["CUP_B_M1126_ICV_MK19_Desert"];
	WEST_VEHICLE_LIGHT7 = ["CUP_B_LAV25M240_USMC"];
	//--- APCs
	WEST_VEHICLE_APC1 = ["CUP_B_MCV80_GB_D_SLAT"];
	WEST_VEHICLE_APC2 = ["CUP_B_FV510_GB_D_SLAT"];
	WEST_VEHICLE_APC3 = ["CUP_B_M2A3Bradley_USA_D"];
	//--- Tanks
	WEST_VEHICLE_ARMORED1 = ["CUP_B_M1A1_Woodland_US_Army"];	
	WEST_VEHICLE_ARMORED2 = ["CUP_B_M1A2_TUSK_MG_US_Army"];
	WEST_VEHICLE_ARMORED3 = ["CUP_B_M1A2_TUSK_MG_US_Army"];
	//--- AA Vehicles
	WEST_VEHICLE_AA1 = ["CUP_B_M163_USA"];
	WEST_VEHICLE_AA2 = ["CUP_B_HMMWV_Avenger_USMC"];
	WEST_VEHICLE_AA3 = ["CUP_B_ZSU23_CDF"];
	//--- Air
	WEST_AIR_HELI1 = ["CUP_B_UH1D_GER_KSK_Des"];
	WEST_AIR_HELI2 = [""];
	WEST_AIR_HELI_ATTACK = [""];
	WEST_AIR_AA = ["CUP_B_F35B_AA_USMC"];
	WEST_AIR_CAS = ["CUP_B_F35B_LGB_USMC"];
	//--- Boats
	WEST_NAVAL_ASSAULT_BOAT1 = ["CUP_B_RHIB2Turret_USMC"];
	WEST_NAVAL_ASSAULT_BOAT2 = ["B_Boat_Armed_01_minigun_F"];
	WEST_NAVAL_MEDIUM_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	WEST_NAVAL_LARGE_ASSAULT_BOAT = ["sfp_rbb_norrkoping"];
	//---Manual Set SQUAD - odd bug
	WEST_TOWNS_SQUAD_NAVAL1 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F"];
	WEST_TOWNS_SQUAD_NAVAL2 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AA_F"];
	WEST_TOWNS_SQUAD_NAVAL3 = ["I_diver_TL_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AT_F", "I_Soldier_AA_F", "I_Soldier_AA_F"];
};
if (CTI_TOWNS_OCCUPATION_WEST == 2) then { 
//--- MIXED TOWN OCCUPATION - vanilla/cup/ofps/etc..
	//--- Infantry
	WEST_SOLDIER = ["CUP_B_US_Soldier"];
	WEST_SOLDIER_AA = ["CUP_B_US_Soldier_AA"];
	WEST_SOLDIER_AR = ["CUP_B_US_Soldier_AR"];
	WEST_SOLDIER_AT = ["CUP_B_US_Soldier_AT"];
	WEST_SOLDIER_CREW = ["CUP_B_US_Crew"];
	WEST_SOLDIER_LAT = ["CUP_B_US_Soldier_AT"];
	WEST_SOLDIER_HAT = ["CUP_B_US_Soldier_HAT"];
	WEST_SOLDIER_ENGINEER = ["CUP_B_US_Soldier_Engineer_EOD"];
	WEST_SOLDIER_GL = ["CUP_B_US_Soldier_GL"];
	WEST_SOLDIER_MEDIC = ["CUP_B_US_Medic"];
	WEST_SOLDIER_MG = "CUP_B_US_Soldier_AR";
	WEST_SOLDIER_PILOT = ["CUP_B_US_Pilot"];
	WEST_SOLDIER_SNIPER = ["CUP_B_US_Sniper_M107"];
	WEST_SOLDIER_TEAMLEADER = ["B_Soldier_TL_F"];
	WEST_SOLDIER_SQUADLEADER = ["B_Soldier_SL_F"];
	//--- Naval Units
	WEST_SOLDIER_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_SOLDIER_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	//--- Light Vehicles
	WEST_VEHICLE_LIGHT1 = ["CUP_B_HMMWV_DSHKM_GPK_ACR"];
	WEST_VEHICLE_LIGHT2 = ["CUP_B_Jackal2_L2A1_GB_D"];
	WEST_VEHICLE_LIGHT3 = ["CUP_RG31_M2"];
	WEST_VEHICLE_LIGHT4 = ["CUP_B_Dingo_GL_CZ_Wdl"];
	WEST_VEHICLE_LIGHT5 = ["CUP_B_Ridgback_GMG_GB_D"];
	WEST_VEHICLE_LIGHT6 = ["CUP_B_M1126_ICV_MK19_Desert"];
	WEST_VEHICLE_LIGHT7 = ["CUP_B_LAV25M240_USMC"];
	//--- APCs
	WEST_VEHICLE_APC1 = ["CUP_B_MCV80_GB_D_SLAT"];
	WEST_VEHICLE_APC2 = ["CUP_B_FV510_GB_D_SLAT"];
	WEST_VEHICLE_APC3 = ["CUP_B_M2A3Bradley_USA_D"];
	//--- Tanks
	WEST_VEHICLE_ARMORED1 = ["CUP_B_M1A1_Woodland_US_Army"];	
	WEST_VEHICLE_ARMORED2 = ["CUP_B_M1A2_TUSK_MG_US_Army"];	
	WEST_VEHICLE_ARMORED3 = ["B_MBT_01_TUSK_F"];
	//--- AA Vehicles
	WEST_VEHICLE_AA1 = ["CUP_B_M163_USA"];
	WEST_VEHICLE_AA2 = ["CUP_B_HMMWV_Avenger_USMC"];
	WEST_VEHICLE_AA3 = ["B_APC_Tracked_01_AA_F"];
	//--- Air
	WEST_AIR_HELI1 = ["CUP_B_UH1D_GER_KSK_Des"];
	WEST_AIR_HELI2 = [""];
	WEST_AIR_HELI_ATTACK = [""];
	WEST_AIR_AA = ["CUP_B_F35B_AA_USMC"];
	WEST_AIR_CAS = ["CUP_B_F35B_LGB_USMC"];
	//--- Boats
	WEST_NAVAL_ASSAULT_BOAT1 = ["CUP_B_RHIB2Turret_USMC"];
	WEST_NAVAL_ASSAULT_BOAT2 = ["B_Boat_Armed_01_minigun_F"];
	WEST_NAVAL_MEDIUM_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	WEST_NAVAL_LARGE_ASSAULT_BOAT = ["sfp_rbb_norrkoping"];
	//---Manual Set SQUAD - odd bug
	WEST_TOWNS_SQUAD_NAVAL1 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F"];
	WEST_TOWNS_SQUAD_NAVAL2 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AA_F"];
	WEST_TOWNS_SQUAD_NAVAL3 = ["I_diver_TL_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AT_F", "I_Soldier_AA_F", "I_Soldier_AA_F"];
};
//--- Town Teams Templates
//--- Infantry Squads
WEST_TOWNS_SQUAD_RIFLEMEN1 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AR, WEST_SOLDIER_AR, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER];
WEST_TOWNS_SQUAD_RIFLEMEN2 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AR, WEST_SOLDIER_AR, WEST_SOLDIER_MG, WEST_SOLDIER_MG, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER];
WEST_TOWNS_SQUAD_RIFLEMEN3 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AR, WEST_SOLDIER_AR, WEST_SOLDIER_GL, WEST_SOLDIER_GL, WEST_SOLDIER_MG, WEST_SOLDIER_MG, WEST_SOLDIER, WEST_SOLDIER];
WEST_TOWNS_SQUAD_SNIPER = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_SNIPER, WEST_SOLDIER_SNIPER, WEST_SOLDIER_SNIPER, WEST_SOLDIER, WEST_SOLDIER];
WEST_TOWNS_SQUAD_AT1 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_LAT, WEST_SOLDIER_LAT, WEST_SOLDIER_LAT, WEST_SOLDIER_LAT, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER];
WEST_TOWNS_SQUAD_AT2 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER];
WEST_TOWNS_SQUAD_AA = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AA, WEST_SOLDIER_AA, WEST_SOLDIER_AA, WEST_SOLDIER_AA, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER, WEST_SOLDIER];
//WEST_TOWNS_SQUAD_NAVAL1 = [WEST_SOLDIER_NAVAL_SQUADLEADER, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY];
//WEST_TOWNS_SQUAD_NAVAL2 = [WEST_SOLDIER_NAVAL_SQUADLEADER, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_HAT, WEST_SOLDIER_AA];
//WEST_TOWNS_SQUAD_NAVAL3 = [WEST_SOLDIER_NAVAL_SQUADLEADER, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER_AA, WEST_SOLDIER_AA];
//--- Vehicle Squads
WEST_TOWNS_SQUAD_LIGHT1 = WEST_VEHICLE_LIGHT1 + WEST_VEHICLE_LIGHT1 + WEST_VEHICLE_LIGHT1;
WEST_TOWNS_SQUAD_LIGHT2 = WEST_VEHICLE_LIGHT2 + WEST_VEHICLE_LIGHT2 + WEST_VEHICLE_LIGHT2;
WEST_TOWNS_SQUAD_LIGHT3 = WEST_VEHICLE_LIGHT3 + WEST_VEHICLE_LIGHT3 + WEST_VEHICLE_LIGHT3;
WEST_TOWNS_SQUAD_LIGHT4 = WEST_VEHICLE_LIGHT4 + WEST_VEHICLE_LIGHT4 + WEST_VEHICLE_LIGHT4;
WEST_TOWNS_SQUAD_LIGHT5 = WEST_VEHICLE_LIGHT5 + WEST_VEHICLE_LIGHT5 + WEST_VEHICLE_LIGHT5;
WEST_TOWNS_SQUAD_LIGHT6 = WEST_VEHICLE_LIGHT6 + WEST_VEHICLE_LIGHT6 + WEST_VEHICLE_LIGHT6;
WEST_TOWNS_SQUAD_LIGHT7 = WEST_VEHICLE_LIGHT7 + WEST_VEHICLE_LIGHT7 + WEST_VEHICLE_LIGHT7;
WEST_TOWNS_SQUAD_APC1 = WEST_VEHICLE_APC1 + WEST_VEHICLE_APC1 + WEST_VEHICLE_APC1;
WEST_TOWNS_SQUAD_APC2 = WEST_VEHICLE_APC2 + WEST_VEHICLE_APC2 + WEST_VEHICLE_APC2;
WEST_TOWNS_SQUAD_APC3 = WEST_VEHICLE_APC3 + WEST_VEHICLE_APC3 + WEST_VEHICLE_APC3;
WEST_TOWNS_SQUAD_ARMORED1 = WEST_VEHICLE_ARMORED1 + WEST_VEHICLE_ARMORED1 + WEST_VEHICLE_ARMORED1;
WEST_TOWNS_SQUAD_ARMORED2 = WEST_VEHICLE_ARMORED2 + WEST_VEHICLE_ARMORED2 + WEST_VEHICLE_ARMORED2;
WEST_TOWNS_SQUAD_ARMORED3 = WEST_VEHICLE_ARMORED3 + WEST_VEHICLE_ARMORED3 + WEST_VEHICLE_ARMORED3;
WEST_TOWNS_SQUAD_VEHICLE_AA1 = WEST_VEHICLE_AA1 + WEST_VEHICLE_AA1;
WEST_TOWNS_SQUAD_VEHICLE_AA2 = WEST_VEHICLE_AA2 + WEST_VEHICLE_AA2;
WEST_TOWNS_SQUAD_VEHICLE_AA3 = WEST_VEHICLE_AA3 + WEST_VEHICLE_AA3;
WEST_TOWNS_SQUAD_ASSAULT_BOAT1 = WEST_NAVAL_ASSAULT_BOAT1 + WEST_NAVAL_ASSAULT_BOAT1 + WEST_NAVAL_ASSAULT_BOAT1;
WEST_TOWNS_SQUAD_ASSAULT_BOAT2 = WEST_NAVAL_ASSAULT_BOAT2 + WEST_NAVAL_ASSAULT_BOAT2 + WEST_NAVAL_ASSAULT_BOAT2;
WEST_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT = WEST_NAVAL_MEDIUM_ASSAULT_BOAT + WEST_NAVAL_MEDIUM_ASSAULT_BOAT;
WEST_TOWNS_SQUAD_LARGE_ASSAULT_BOAT = WEST_NAVAL_LARGE_ASSAULT_BOAT;
//--- Mixed Squads
WEST_TOWNS_SQUAD_LIGHT1_MIXED = WEST_VEHICLE_LIGHT1 + WEST_TOWNS_SQUAD_RIFLEMEN1;
WEST_TOWNS_SQUAD_LIGHT2_MIXED = WEST_VEHICLE_LIGHT2 + WEST_TOWNS_SQUAD_RIFLEMEN1;
WEST_TOWNS_SQUAD_LIGHT3_MIXED = WEST_VEHICLE_LIGHT3 + WEST_TOWNS_SQUAD_RIFLEMEN1;
WEST_TOWNS_SQUAD_LIGHT4_MIXED = WEST_VEHICLE_LIGHT4 + WEST_TOWNS_SQUAD_RIFLEMEN2;
WEST_TOWNS_SQUAD_LIGHT5_MIXED = WEST_VEHICLE_LIGHT5 + WEST_TOWNS_SQUAD_RIFLEMEN2;
WEST_TOWNS_SQUAD_LIGHT6_MIXED = WEST_VEHICLE_LIGHT6 + WEST_TOWNS_SQUAD_RIFLEMEN3;
WEST_TOWNS_SQUAD_LIGHT7_MIXED = WEST_VEHICLE_LIGHT7 + WEST_TOWNS_SQUAD_RIFLEMEN3;
WEST_TOWNS_SQUAD_APC1_MIXED = WEST_VEHICLE_APC1 + WEST_TOWNS_SQUAD_RIFLEMEN1;
WEST_TOWNS_SQUAD_APC2_MIXED = WEST_VEHICLE_APC2 + WEST_TOWNS_SQUAD_RIFLEMEN2;
WEST_TOWNS_SQUAD_APC3_MIXED = WEST_VEHICLE_APC3 + WEST_TOWNS_SQUAD_RIFLEMEN3;
WEST_TOWNS_SQUAD_ARMORED1_MIXED = WEST_VEHICLE_ARMORED1 + WEST_TOWNS_SQUAD_RIFLEMEN1;
WEST_TOWNS_SQUAD_ARMORED2_MIXED = WEST_VEHICLE_ARMORED2 + WEST_TOWNS_SQUAD_RIFLEMEN2;
WEST_TOWNS_SQUAD_ARMORED3_MIXED = WEST_VEHICLE_ARMORED3 + WEST_TOWNS_SQUAD_RIFLEMEN3;
WEST_TOWNS_SQUAD_VEHICLE_AA1_MIXED = WEST_VEHICLE_AA1 + WEST_TOWNS_SQUAD_RIFLEMEN1;
WEST_TOWNS_SQUAD_VEHICLE_AA2_MIXED = WEST_VEHICLE_AA2 + WEST_TOWNS_SQUAD_RIFLEMEN2;
WEST_TOWNS_SQUAD_VEHICLE_AA3_MIXED = WEST_VEHICLE_AA3 + WEST_TOWNS_SQUAD_RIFLEMEN3;
};
