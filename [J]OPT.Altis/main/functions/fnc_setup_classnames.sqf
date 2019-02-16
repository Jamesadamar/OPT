/**
* SETUP FILE Classnames
*  setup all needed classnames or variables here
*/
#include "script_component.hpp"

// hier werden diverse Klassen definiert welche in Scripten abgefragt werden (z.B. klassenbezogene Ttigkeiten oder Waffen)
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

/**
 * ALL PLAYER SLOTS AND UNITS
 */
/* HL UND PL */
GVARMAIN(officer) =
[
    "OPT_NATO_Offizier_T",
    "OPT_CSAT_Offizier_T",
    "OPT_NATO_Offizier",
    "OPT_CSAT_Offizier"
];

/* PILOTS */
// hier sind alle Classnames aufgelistet, welche als Piloten definiert werden um fliegen zu drfen
GVARMAIN(pilots) =
[
    "OPT_NATO_Pilot_T",
    "OPT_CSAT_Pilot_T",
    "OPT_NATO_Pilot",
    "OPT_CSAT_Pilot"
];


/* FAHRZEUGE UND CREW */
    // hier sind alle Classnames aufgelistet, welche als Crew definiert werden um gepanzerte Fahrzeuge fahren zu drfen (und Schtzenposition)
GVARMAIN(crew) =
[
    "OPT_NATO_Besatzungsmitglied_T",
    "OPT_CSAT_Besatzungsmitglied_T",
    "OPT_NATO_Besatzungsmitglied",
    "OPT_CSAT_Besatzungsmitglied"
];


/* AT-Schützen UND LAUNCHER */
GVARMAIN(rocketmen) =
[
    "OPT_NATO_Luftabwehrspezialist",
    "OPT_CSAT_Luftabwehrspezialist",
    "OPT_NATO_PA_Schuetze",
    "OPT_NATO_PA_Schuetze_T",
    "OPT_CSAT_PA_Schuetze_T",
    "OPT_CSAT_PA_Schuetze",
    "OPT_NATO_PA_Schuetze_Heavy",
    "OPT_CSAT_PA_Schuetze_Heavy",
    "OPT_NATO_Aufklaerung_Spaeher_AT",
    "OPT_CSAT_Aufklaerung_Spaeher_AT",
    "OPT_NATO_Aufklaerung_Spaeher_AT_T",
    "OPT_CSAT_Aufklaerung_Spaeher_AT_T"
];
/* OPERATOR */
GVARMAIN(operator) =
[
    "OPT_NATO_Operator_T",
    "OPT_CSAT_Operator_T",
    "OPT_NATO_Operator",
    "OPT_CSAT_Operator"
];

/* MEDIC */
GVARMAIN(medic) =
[
    "OPT_NATO_Sanitaeter_T",
    "OPT_CSAT_Sanitaeter_T",
    "OPT_NATO_Sanitaeter",
    "OPT_CSAT_Sanitaeter"
];

/* RECONSNIPER+waffen */
GVARMAIN(reconSnipers) =
[
    "OPT_NATO_Aufklaerung_Scharfschutze_T",
    "OPT_NATO_Aufklaerung_Scharfschutze_2",
    "OPT_CSAT_Aufklaerung_Scharfschutze_T",
    "OPT_CSAT_Aufklaerung_Scharfschutze_2",
    "OPT_NATO_Aufklaerung_Scharfschutze",
    "OPT_CSAT_Aufklaerung_Scharfschutze"
];

/* SNIPER+waffen */
GVARMAIN(snipers) =
[
    "OPT_NATO_Scharfschuetze_T",
    "OPT_NATO_Scharfschuetze_2",
    "OPT_CSAT_Scharfschuetze_T",
    "OPT_CSAT_Scharfschuetze_2",
    "OPT_NATO_Scharfschuetze_2_T",
    "OPT_CSAT_Scharfschuetze_2_T",
    "OPT_NATO_Scharfschuetze",
    "OPT_CSAT_Scharfschuetze",
    "OPT_CSAT_Beobachter",
    "OPT_NATO_Beobachter",
    "OPT_CSAT_Beobachter_T",
    "OPT_NATO_Beobachter_T"
];

/* MG */
GVARMAIN(soldatMG) =
[
    "OPT_CSAT_MG_Schuetze_T",
    "OPT_NATO_MG_Schuetze_T",
    "OPT_CSAT_MG_Schuetze",
    "OPT_NATO_MG_Schuetze"
];

/* SMG */
GVARMAIN(soldatSMG) =
[
    "OPT_CSAT_SMG_Schuetze_T",
    "OPT_NATO_SMG_Schuetze_T",
    "OPT_CSAT_SMG_Schuetze",
    "OPT_NATO_SMG_Schuetze"
];


/* GRENADIER */
GVARMAIN(grenadiers) =
[
    "OPT_CSAT_Grenadier_T",
    "OPT_NATO_Grenadier_T",
    "OPT_CSAT_Aufklaerung_JTAC",
    "OPT_NATO_Aufklaerung_JTAC",
    "OPT_NATO_Aufklaerung_JTAC_T",
    "OPT_CSAT_Aufklaerung_JTAC_T",
    "OPT_CSAT_Grenadier",
    "OPT_NATO_Grenadier",
    "OPT_NATO_Gruppenfuehrer",
    "OPT_CSAT_Gruppenfuehrer",
    "OPT_NATO_Aufklaerung_Truppfuehrer",
    "OPT_NATO_Aufklaerung_Truppfuehrer_T",
    "OPT_CSAT_Aufklaerung_Truppfuehrer",
    "OPT_CSAT_Aufklaerung_Truppfuehrer_T"
];

/* PIONIER */
GVARMAIN(pioniers) =
[
    "OPT_NATO_Pionier_T",
    "OPT_CSAT_Pionier_T",
    "OPT_CSAT_Sprengmeister",
    "OPT_CSAT_Aufklaerung_Sprengmeister_T",
    "OPT_NATO_Aufklaerung_Sprengmeister_T",
    "OPT_NATO_Pionier",
    "OPT_CSAT_Pionier",
    "OPT_NATO_Sprengmeister",
    "OPT_CSAT_Aufklaerung_Sprengmeister",
    "OPT_NATO_Aufklaerung_Sprengmeister"
];

/* RECON */
GVARMAIN(recon) =
[
    "OPT_CSAT_Aufklaerung_Scharfschutze_T",
    "OPT_CSAT_Aufklaerung_Scharfschutze_2",
    "OPT_CSAT_Aufklaerung_Sprengmeister_T",
    "OPT_NATO_Aufklaerung_Sprengmeister_T",
    "OPT_CSAT_Aufklaerung_Sprengmeister",
    "OPT_NATO_Aufklaerung_Sprengmeister",
    "OPT_NATO_Aufklaerung_JTAC",
    "OPT_NATO_Aufklaerung_JTAC_T",
    "OPT_CSAT_Aufklaerung_JTAC",
    "OPT_CSAT_Aufklaerung_JTAC_T",
    "OPT_CSAT_Aufklaerung_Spaeher_AT",
    "OPT_CSAT_Aufklaerung_Spaeher_AT_T",
    "OPT_NATO_Aufklaerung_Spaeher_AT",
    "OPT_NATO_Aufklaerung_Spaeher_AT_T",
    "OPT_CSAT_Aufklaerung_Sprengmeister_T",
    "OPT_NATO_Aufklaerung_Sprengmeister_T",
    "OPT_NATO_Aufklaerung_Truppfuehrer",
    "OPT_NATO_Aufklaerung_Truppfuehrer_T",
    "OPT_CSAT_Aufklaerung_Truppfuehrer",
    "OPT_CSAT_Aufklaerung_Truppfuehrer_T",
    "OPT_CSAT_Soldat",
    "OPT_NATO_Soldat"
];

/* CAN USE GUNNER SLOT */
GVARMAIN(gunner) =
[

] + GVARMAIN(pilots) + GVARMAIN(crew);

/* Ingenieur */
GVARMAIN(engineers) =
[
    "OPT_NATO_Pionier_T",
    "OPT_CSAT_Pionier_T",
	"OPT_NATO_Pionier",
    "OPT_CSAT_Pionier"
];


/*
* ALL VEHICLES
*/
GVARMAIN(pilots_vecs) =
[
    "OPT4_B_Heli_light_03_green_F",                    // WY-55 Hellcat (Unbewaffnet)
    "OPT_B_Heli_Light_01_F",                    // MH-9 Hummingbird
    "OPT4_B_Heli_Light_01_armed_F",            // AH-9 Pawnee (Unbewaffnet) - 80000
    "OPT_B_Heli_Light_01_armed_2_F",                // AH-9 Pawnee scalpel
    "OPT_B_Heli_Transport_01_F",                // UH-80 Ghosthawk
    "OPT_B_Heli_Transport_03_unarmed_F",    // CH-67 Huron unarmed (Transport+Lift)
    "OPT_B_Heli_Transport_03_F",            // CH-67 Huron armed (Transport+Lift)
    "OPT_B_Heli_Transport_02_F",            // CH-49 Mohawk (Transport+Lift)
    "OPT_B_T_UAV_03_dynamicLoadout_F",        // MQ12-Falcon - noch in arbeit erstma nur testweise mit preis eingebaut
    "OPT_B_T_VTOL_02_infantry_unarmed_F",        // VTOL Y-32 Xi'an (Inf-Transport)
    "OPT_B_T_VTOL_01_infantry_F",            // VTOL Blackfish (Inf-Transport) 200000
    "OPT_B_T_VTOL_01_vehicle_F",            // VTOL Blackfish (Fahrzeug-Transport)
    "OPT_B_T_VTOL_01_armed_F",                    // VTOL Blackfish BEWAFFNET
    "OPT4_B_Heli_Attack_01_F",                // AH-99 Blackfoot 200000(Unbewaffnet)
    "OPT_B_Plane_CAS_01_F",                    // A-164 Wipeout
    "OPT_B_Plane_Fighter_AA_01_F",                // F/A-181 Black Wasp II (AA)
    "OPT_B_Plane_Fighter_03_AA_F_1",                    // Buzzard AA
    "OPT_B_Plane_CAS_01_F_1",                // A-164 Wipeout
    "sfp_bo105_unarmed",                // BO 105 - testweise eingebaut - textur klären!
    "OPT_O_Heli_Light_03_unarmed_F",                // WY-55 Hellcat
    "OPT4_O_Heli_light_03_F",                // WY-55 Hellcat
    "OPT_O_Heli_Light_03_unarmed_green_F",            // WY-55 Hellcat - 60000
    "OPT_O_Heli_Light_03_green_F",                    // WY-55 Hellcat (DAR)
    "OPT_O_Heli_light_03_Scalpel_green_F",            // WY-55 Hellcat (scalpel)
    "OPT_O_Heli_light_03_Scalpel_F",            // WY-55 Hellcat (scalpel)
    "OPT_O_Heli_Light_02_unarmed_F",                    // PO-30 Orca
    "OPT_O_Heli_Light_02_unarmed_black_F",        // PO-30 Orca
    "OPT_O_Heli_Light_02_Minigun_F",        // PO-30 Orca minigun 90000
    "OPT_O_Heli_Light_02_Minigun_black_F",        // PO-30 Orca minigun 90000
    "OPT4_O_Heli_Light_02_F",                        // PO-30 Orca (Unbewaffnet)
    "OPT4_O_Heli_Light_02_black_F",            // PO-30 Orca (DAR)
    "OPT_O_Heli_Light_02_F",                             // PO-30 Orca (scalpel)
    "OPT_O_Heli_Light_02_black_F",                     // PO-30 Orca (scalpel)
    "OPT_O_Heli_Transport_04_F",                         // Mi-290 Taru (Lift)
    "OPT_O_Heli_Transport_04_black_F",             // Mi-290 Taru (Lift)
    "OPT_O_Heli_Transport_04_covered_F",              // Mi-290 Taru (Transport)
    "OPT_O_Heli_Transport_04_covered_black_F",      // Mi-290 Taru (Transport)
    "OPT_O_Heli_Transport_04_bench_F",                 // Mi-290 Taru (Bench)
    "OPT_O_Heli_Transport_04_bench_black_F",        // Mi-290 Taru (Bench)
    "OPT_O_UAV_02_light_F",                         // Ababil unbewaffnet
    "OPT_O_UAV_02_CAS_F",                         // Ababil GBU-12
    "OPT_O_UAV_02_F",                             // Ababil Scalpel
    "OPT_O_UAV_02_AA_F",                        // Ababil AA
    "OPT_O_T_VTOL_02_infantry_unarmed_F",        // VTOL Y-32 Xi'an (Inf-Transport)
    "OPT_O_T_VTOL_02_vehicle_unarmed_F",        // VTOL Y-32 Xi'an (Fahrzeug-Transport) 300000
    "OPT_O_T_VTOL_02_infantry_F",                     // VTOL Y-32 Xi'an (Inf-Transport)
    "OPT_O_T_VTOL_02_vehicle_F",                         // VTOL Y-32 Xi'an (Fahrzeug-Transport)
    "OPT_O_T_VTOL_01_vehicle_F",            // VTOL Blackfish (Fahrzeug-Transport)
    "OPT4_O_Heli_Attack_02_F",                         // Mi-48 Kajman    (Unbewaffnet) 200000
    "OPT4_O_Heli_Attack_02_black_F",                // Mi-48 Kajman (Schwarz)
    "OPT_O_Plane_CAS_02_AA_F",                         // To-199 Neophron light - raus
    "OPT_O_Plane_CAS_02_F",                         // To-199 Neophron
    "OPT_O_Plane_Fighter_03_AA_F_1",                    // A-143 Buzzard (AA) 200000
    "OPT_O_Plane_CAS_01_F_1" ,                    // Wipeout CAS 400000
    "OPT_O_T_UAV_04_CAS_F",                         // KH-3A Fenghuan - noch in arbeit erstma nur testweise mit preis eingebaut
    "OPT_O_Plane_Fighter_AA_02_F"                    // To-201 Shikra (AA)
];

GVARMAIN(crew_vecs) =
[
    "OPT4_B_APC_Tracked_01_rcws_F",                    // IFV-6c Panther
    "OPT_B_APC_Wheeled_01_cannon_light_F",            // AMV-7 Marshall (Leicht)
    "OPT4_B_APC_Wheeled_01_cannon_F",                // AMV-7 Marshall
    "OPT4_B_APC_Tracked_01_AA_F",                    // IFV-6a Cheetah
    "OPT4_B_APC_tracked_03_cannon_F",            // FV-720 Mora
    "OPT4_B_MBT_01_cannon_F",                    // M2A4 Slammer
    "OPT4_B_MBT_01_TUSK_F",                        // M2A4 SlammerUp
    "OPT_B_MBT_03_cannon_F",                            // MBT-52 Kuma, fliegt raus
    "OPT_B_MBT_01_Arty_F",                        // M4 Scorcher
    "OPT4_B_MBT_01_mlrs_F",                        // M4 Scorcher
    "OPT4_B_MBT_01_arty_F",                            // M4 Scorcher
    "OPT_B_MBT_01_mlrs_F",                            // M5 Sandstorm
    "OPT4_O_APC_Wheeled_02_rcws_F",        // MSE-3 Marid
    "OPT_O_APC_Wheeled_03_cannon_light_F",        // AFV-4 Gorgon (Leicht)
    "OPT4_O_APC_Wheeled_03_cannon_F",                // AFV-4 Gorgon
    "OPT4_O_APC_Tracked_02_AA_F",                // ZSU-39 Tigris
    "OPT_O_APC_Tracked_02_cannon_light_F",    // BTR-K Kamysh
    "OPT4_O_APC_Tracked_02_cannon_F",            // BTR-K Kamysh (Titan)
    "OPT4_O_MBT_02_cannon_F",                    // T-100 Varsuk
    "OPT4_O_MBT_02_arty_F",                    // 2S9 Sochor
    "OPT4_O_T_APC_Wheeled_02_rcws_ghex_F",            // MSE-3 Marid 50000
    "OPT_O_APC_Wheeled_03_cannon_light_F",            // AFV-4 Gorgon (Leicht) 90000
    "OPT_O_APC_Wheeled_03_cannon_F",            // AFV-4 Gorgon 120000
    "OPT4_O_T_APC_Tracked_02_AA_ghex_F",                // ZSU-39 Tigris 275000
    "OPT_O_T_APC_Tracked_02_cannon_ghex_light_F",    // BTR-K Kamysh 120000
    "OPT4_O_T_APC_Tracked_02_cannon_ghex_F",        // BTR-K Kamysh (Titan) 275000
    "OPT4_O_T_MBT_02_cannon_ghex_F",                    // T-100 Varsuk 450000
    "OPT4_O_T_MBT_02_arty_ghex_F",                // 2S9 Sochor 400000
	"OPT4_B_MRAP_01_gmg_F",
	"OPT4_B_LSV_01_AT_F",
	"OPT4_O_MRAP_02_gmg_F",
	"OPT4_O_LSV_02_AT_F"	
];

/* UAV */
GVARMAIN(big_uavs) =
[
    "OPT_B_UAV_02_F",
    "OPT_B_UAV_02_CAS_F",
    "OPT_B_UAV_02_light_F",
    "OPT_O_UAV_02_F",
    "OPT_O_UAV_02_CAS_F",
    "OPT_O_UAV_02_light_F",
    "OPT_B_UAV_02_AA_F",
    "OPT_O_UAV_02_AA_F",
    "B_UCSV_01",
    "O_UCSV_01",
    "OPT_O_T_UAV_04_CAS_F",
    "OPT_B_T_UAV_03_dynamicLoadout_F"
];

/*
* ALL RESTRICTED WEAPONS
* weapons listed here are only allowed for the particular slot or class
*/
/* Waffenabfrage Offizier/Pilot/Crew*/
GVARMAIN(SMG) =
[
    "OPT_SMG_01_F",
    "OPT_SMG_02_F"
];

/* Waffenabfrage SMG Schütze */
GVARMAIN(MMG) =
[
    "OPT_MMG_02_black_F",
    "OPT_MMG_01_hex_F",
    "OPT_MMG_01_tan_F"
];

/* Waffenabfrage MG Schütze */
GVARMAIN(LMG) =
[
    "OPT_LMG_Zafir_F",
    "OPT_LMG_Mk200_F"
];

GVARMAIN(launchers) =
[
    "OPT_launch_B_RPG32_F",
    "OPT_launch_RPG32_F",
    "OPT_launch_NLAW_F",
    "OPT_launch_NLAW_M_F",
    "OPT_launch_B_Titan_F",
    "OPT_launch_B_Titan_tna_F",
    "OPT_launch_O_Titan_F",
    "OPT_launch_O_Titan_short_F",
    "OPT_launch_B_Titan_short_F",
    "Weapon_launch_MRAWS_green_rail_F",
    "Weapon_launch_MRAWS_olive_rail_F"
];

GVARMAIN(sniperRifles) =
[
    "OPT_srifle_DMR_01_F",
    "OPT_srifle_EBR_F",
    "OPT_srifle_DMR_02_F",
    "OPT_srifle_DMR_05_hex_F",
    "OPT_srifle_DMR_05_blk_F",
    "OPT_srifle_DMR_03_F",
    "OPT_srifle_DMR_06_olive_F",
    "OPT_srifle_GM6_camo_F",
    "OPT_srifle_LRR_F",
    "OPT_srifle_LRR_tna_F",
    "OPT_srifle_GM6_ghex_F",
    "srifle_GM6_ghex_F",
    "srifle_LRR_F"
];

GVARMAIN(reconSniperRifles) =
[
    "OPT_arifle_MXM_Black_F",
    "OPT_srifle_DMR_07_blk_F"
];

GVARMAIN(reconRifles) =
[
    "OPT_arifle_Katiba_F",
    "OPT_arifle_Katiba_GL_F",
    "OPT_arifle_MX_Black_F",
    "OPT_arifle_MX_GL_Black_F"
];

GVARMAIN(grenadelaunchers) =
[
    "OPT_arifle_MX_GL_Black_F",
    "OPT_arifle_Katiba_GL_F",
    "OPT_arifle_SPAR_01_GL_blk_F",
    "OPT_arifle_CTAR_GL_blk_F"
];

GVARMAIN(restrictedWeapons) =
(
    GVARMAIN(SMG) +
    GVARMAIN(MMG) +
    GVARMAIN(LMG) +
    GVARMAIN(launchers) +
    GVARMAIN(sniperRifles) +
    GVARMAIN(reconSniperRifles) +
    GVARMAIN(reconRifles) +
    GVARMAIN(reconRifles) +
    GVARMAIN(grenadelaunchers)
);

/*
* ALL RESTRICTED ITEMS
* items listed here are only allowed for the particular slot or class
*/
/* Item check for operator */
GVARMAIN(operatorItems) =
[
    "B_UavTerminal",
    "O_UavTerminal"
];

/* Item check for medics */
GVARMAIN(medicItems) =
[
    "Medikit"
];

GVARMAIN(bannedItems) =
[
    "FirstAidKit"
];

GVARMAIN(restrictedItems) =
(
    GVARMAIN(operatorItems) +
    GVARMAIN(medicItems) +
    GVARMAIN(bannedItems)
);