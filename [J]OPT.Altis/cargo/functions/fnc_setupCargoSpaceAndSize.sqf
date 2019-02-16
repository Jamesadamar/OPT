/**
* Description:
* define all opt objects with correct ACE Cargo settings 
* there are 4 categories: can transport, can be transported, can be dragged, can be carried
*
* Author:
* James
*
* Arguments:
* None
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only once by XEH_PreInit.sqf at mission start
*
* Global:
* no
*
* Sideeffects:
* define global variable 
*
* Example:
* [] call EFUNC(cargo,setupCargoSpaceAndSize);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */


/****** LOAD IN VEHICLE  ******/
/*
* [cursorTarget, 3] call ace_cargo_fnc_setSize // -1 -> not loadable, 
* [vehicle player, 20] call ace_cargo_fnc_setSpace   // -> -1, no cargo possible
 Arguments:
 * 0: Any object <OBJECT>
 * 1: true to enable dragging, false to disable <BOOL>
 * 2: Position offset for attachTo command (optinal; default: [0,0,0])<ARRAY>
 * 3: Direction in degree to rotate the object after attachTo (optional; default: 0) <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [object, true, [0,0,0], 0] call ace_dragging_fnc_setDraggable;

 * Arguments:
 * 0: Any object <OBJECT>
 * 1: true to enable carrying, false to disable <BOOL>
 * 2: Position offset for attachTo command <ARRAY> (default: [0,1,1])
 * 3: Direction in degree to rotate the object after attachTo <NUMBER> (default: 0)
 *
 * Return Value:
 * None
 *
 * Example:
 * [object, true, [0,1,1], 0] call ace_dragging_fnc_setCarryable;
 */

/* FORMAT
* (classname, cargo space): Wenn cargo space = -1, dann cargo deaktiviert
*/
GVAR(canTransportCargo) = 
[
// NATO Vehicles    
    ["OPT_B_Quadbike_01_F", 2],                                         // Quadbike    - checken!
    ["OPT_B_G_Offroad_01_F", 4],                                        // Pickup - grad nich drin!
    ["OPT_B_G_Offroad_01_armed_F", 4],                                  // Pickup HMG - grad nich drin!
    ["OPT_B_T_LSV_01_unarmed_F", 4],                                    // Prowler unarmed
    ["OPT_B_T_LSV_01_armed_F", 4],                                      // Prowler armed
    ["OPT4_B_LSV_01_AT_F", 4],                                          // Prowler AT - vanilla - lord
    ["OPT_B_MRAP_03_F", 4],                                             // Strider - grad nich drin!
    ["OPT_B_MRAP_03_hmg_F", 4],                                         // Strider HMG - grad nich drin!
    ["OPT4_B_MRAP_03_gmg_F", 4],                                        // Strider GMG
    ["OPT_B_MRAP_01_F", 4],                                             // Hunter
    ["OPT4_B_MRAP_01_hmg_F", 4],                                        // Hunter HMG
    ["OPT4_B_MRAP_01_gmg_F", 4],                                        // Hunter GMG
    ["OPT_B_Truck_01_covered_F", 6],                                    // HEMTT Inf-Transport
    ["OPT_B_Truck_01_transport_F", 8],                                  // HEMTT Logistik - hinzugefügt
// NATO Armored                 
    ["OPT_B_APC_Wheeled_01_cannon_F", 4],                               // AMV-7 Marshall
    ["OPT4_B_APC_Wheeled_01_cannon_F", 4],                              // AMV-7 Marshall - neu
    ["OPT_B_APC_Wheeled_01_cannon_light_F", 4],                         // AMV-7 Marshall (Leicht)
    ["OPT_B_MBT_01_cannon_F", 4],                                       // M2A4 Slammer
    ["OPT4_B_MBT_01_cannon_F", 4],                                      // M2A4 Slammer - neu
    ["OPT_B_MBT_01_TUSK_F", 4],                                         // M2A4 SlammerUp
    ["OPT4_B_MBT_01_TUSK_F", 4],                                        // M2A4 SlammerUp - neu
    ["OPT_B_APC_Tracked_01_rcws_F", 4],                                 // IFV-6c Panther    von 30
    ["OPT4_B_APC_Tracked_01_rcws_F", 4],                                // IFV-6c Panther - neu
    ["OPT_B_APC_tracked_03_cannon_F", 4],                               // FV-720 Mora     von 30
    ["OPT4_B_APC_tracked_03_cannon_F", 4],                              // FV-720 Mora - neu
// NATO Helicopters     
    ["OPT_B_Heli_Light_01_F", 4],                                       // MH-9 Hummingbird
    ["OPT_B_Heli_light_03_unarmed_green_F", 4],                         // Hellcat unbew
    ["OPT4_B_Heli_light_03_green_F", 4],                                // Hellcat bew
    ["OPT_B_Heli_Transport_01_F", 4],                                   // UH-80 Ghosthawk   von 30
    ["OPT_B_Heli_Transport_02_F", 8],                                   // CH-49 Mohawk (Transport+Lift)    von 30
    ["OPT_B_Heli_Transport_03_unarmed_F", 8],                           // CH-67 Huron unarmed (Transport+Lift)     von 30
    ["OPT_B_Heli_Transport_03_F", 8],                                   // CH-67 Huron armed (Transport+Lift)       von 30
    ["OPT_B_T_VTOL_01_infantry_F", 4],                                  // Blackfish (Inf-Transport) - grad nicht drin!
    ["OPT_B_T_VTOL_01_vehicle_F", 4],                                   // Blackfish (Vehikel-Transport)    
    ["OPT_B_T_VTOL_02_infantry_unarmed_F", 4],                          // Xian (Inf-Transport)   - hinzugefügt
// NATO ships               
    ["OPT_B_Boat_Transport_01_F", 2],                                   // Assault Boat     - hinzugefügt
    ["OPT_B_Boat_Armed_01_minigun_F", 4],                               // Speedboat Minigun    - hinzugefügt
    ["OPT_B_C_Boat_Transport_02_F", 2],                                 // Rhib unbewaffnet      - hinzugefügt
// NATO supplies/drohnen                    
    ["OPT_B_UGV_01_F", 6],                                              // UGV Stomper    von 30
// CSAT Vehicles                    
    ["OPT_O_T_Quadbike_01_ghex_F", 2],                                  // Quadbike    - checken!
    ["OPT_O_T_LSV_02_unarmed_F", 4],                                    // Quilin unarmed
    ["OPT_O_T_LSV_02_armed_F", 4],                                      // Quilin armed
    ["OPT4_O_LSV_02_AT_F", 4],                                          // Prowler AT - vanilla    - lord
    ["OPT_O_G_Offroad_01_F", 4],                                        // Pickup  - grad nich drin!
    ["OPT_O_G_Offroad_01_armed_F", 4],                                  // Pickup HMG  - grad nich drin!
    ["OPT_O_T_MRAP_02_ghex_F", 4],                                      // Ifrit - tropentarn hinzugefügt
    ["OPT_O_T_MRAP_02_hmg_ghex_F", 4],                                  // Ifrit HMG  - tropentarn hinzugefügt
    ["OPT_O_T_MRAP_02_gmg_ghex_F", 4],                                  // Ifrit GMG  - tropentarn hinzugefügt
    ["OPT_O_T_Truck_03_covered_ghex_F", 6],                             // Tempest Transport    
    ["OPT_O_T_Truck_03_transport_ghex_F", 8],                           // Tempest Logistik - hinzugefügt
//vanilla                   
    ["OPT_O_Quadbike_01_F", 2],                                         // Quadbike    - checken!
    ["OPT_O_MRAP_02_F", 4],                                             // Ifrit - tropentarn hinzugefügt
    ["OPT_O_MRAP_02_hmg_F", 4],                                         // Ifrit HMG  - tropentarn hinzugefügt
    ["OPT_O_MRAP_02_gmg_F", 4],                                         // Ifrit GMG  - tropentarn hinzugefügt
    ["OPT4_O_MRAP_02_hmg_F", 4],                                        // Ifrit HMG - neu
    ["OPT4_O_MRAP_02_gmg_F", 4],                                        // Ifrit GMG - neu
    ["OPT_O_Truck_03_covered_F", 6],                                    // Tempest Transport    
    ["OPT_O_Truck_03_transport_F", 8],                                  // Tempest Logistik - hinzugefügt
// CSAT Armored             
    ["OPT_O_APC_Wheeled_03_cannon_F", 4],                               // AFV-4 Gorgon
    ["OPT_O_APC_Wheeled_03_cannon_light_F", 4],                         // AFV-4 Gorgon (Leicht)
    ["OPT4_O_APC_Wheeled_03_cannon_F", 4],                              // AFV-4 Gorgon - neu
    ["OPT_O_T_APC_Wheeled_02_rcws_ghex_F", 4],                          // MSE-3 Marid  - tropentarn hinzugefügt
    ["OPT_O_T_APC_Tracked_02_cannon_ghex_F", 4],                        // BTR-K Kamysh (Titan)
    ["OPT_O_T_APC_Tracked_02_cannon_ghex_light_F", 4],                  // BTR-K Kamysh    
    ["OPT4_O_APC_Tracked_02_cannon_F", 4],                              // BTR-K Kamysh    - neu
    ["OPT_O_T_MBT_02_cannon_ghex_F", 4],                                // T-100  - hinzugefügt
//vanilla       
    ["OPT4_O_APC_Wheeled_02_rcws_F", 4],                                // MSE-3 Marid  - neu
    ["OPT_O_APC_Tracked_02_cannon_F", 4],                               // BTR-K Kamysh (Titan)
    ["OPT_O_APC_Tracked_02_cannon_light_F", 4],                         // BTR-K Kamysh    
    ["OPT_O_MBT_02_cannon_F", 4],                                       // T-100  - hinzugefügt
// CSAT Helicopter              
    ["OPT_O_Heli_Light_03_unarmed_F", 4],                               // WY-55 Hellcat,70000
    ["OPT4_O_Heli_light_03_green_F", 4],                                // WY-55 Hellcat,70000 - neu
    ["OPT4_O_Heli_light_03_F", 4],                                      // hellcat - neu
    ["OPT_O_Heli_Light_02_unarmed_F", 4],                               // PO-30 Orca,100000
    ["OPT_O_Heli_Light_02_unarmed_black_F", 4],                         // PO-30 Orca,100000
    ["OPT4_O_Heli_Light_02_F", 4],                                      // orca - neu
    ["sfp_bo105_unarmed", 4],                                           // BO105 - neu    
    ["OPT_O_Heli_Transport_04_covered_F", 8],                           // Mi-290 Taru (Transport),110000
    ["OPT_O_Heli_Transport_04_covered_black_F", 8],                     // Mi-290 Taru (Transport),110000    
    ["OPT_O_T_VTOL_02_infantry_unarmed_F", 4],                          // Y-32 Xi'an (Inf-Transport), 180000
    ["OPT_O_T_VTOL_01_vehicle_F", 4],                                   // Blackfish (Vehikel-Transport), 180000
// CSAT Supplies                    
    ["OPT_O_T_UGV_01_ghex_F", 6],                                       // UGV Saif    
//vanilla               
    ["OPT_O_UGV_01_F", 6],                                              // UGV Saif    
// CSAT Ships               
    ["OPT_O_Boat_Transport_01_F", 2],                                   // Assault Boat,500
    ["OPT_O_Boat_Armed_01_hmg_F", 4],                                   // Speedboat HMG,14000
    ["OPT_O_C_Boat_Transport_02_F", 2]                                  // rhib unbewaffnet,7000    
];  

/** 
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 * (classname, cargo size): Wenn cargo size = -1, dann verladen deaktiviert
*/  
GVAR(canBeTransported) =    
[       
// NATO supplies    
    ["OPT_B_supplyCrate_F", 1],                                         // Transportkiste (leer)
    ["OPT_Box_NATO_Ammo_F", 2],                                         // Munitionskiste    
    ["OPT_Box_NATO_WpsSpecial_F", 2],                                   // Munition spezial NEUE KISTE!
    ["OPT_Box_NATO_Grenades_F", 2],                                     // granatenkiste    
    ["OPT_NATO_Sprengstoffkiste", 2],                                   // sprengstoffkiste NEUE KISTE!
    ["OPT_Box_NATO_WpsSpecial_AT3_F", 2],                               // Raketenkiste RPG42 NEUE KISTE!
    ["OPT_Box_NATO_WpsSpecial_AA_F", 2],                                // Raketenkiste AA 
    ["OPT_Box_NATO_WpsSpecial_Diver_F", 2],                             // Taucherkiste,5000
    ["OPT_B_HMG_01_F", 2],                                              // Stand-MG niedrig,10000
    ["OPT_B_HMG_01_high_F", 2],                                         // Stand-MG hoch,10000
    ["OPT_B_GMG_01_F", 2],                                              // Stand-GMG niedrig,15000
    ["OPT_B_GMG_01_high_F", 2],                                         // Stand-GMG hoch,15000
    ["OPT_B_static_AA_F", 2],                                           // Stand-AA,25000
    ["OPT_B_static_AT_F", 2],                                           // Stand-AT,200000    
    ["OPT_B_Mortar_01_F", 2],                                           // MK6 - Mörser,200000
    ["B_Mortar_01_F", 2],                                               // MK6 - Mörser    
    ["OPT_B_Slingload_01_Fuel_F", 8],                                   // Fuelcontainer  
    ["OPT_B_Slingload_01_Repair_F", 8],                                 // Reparaturcontainer 
    ["OPT_B_Slingload_01_Ammo_F", 8],                                   // Munitionscontainer - von 110 runtergesetzt damit es in lkw passt             
    ["OPT_B_Slingload_01_Medevac_F", 8],                                // Lazarettcontainer
    ["Land_Cargo10_military_green_F", 8],                               // Radarcontainer NEU - wieder getauscht
    ["OPT_B_Slingload_01_Repair_Radar_F", 8],                           // Radarcontainer NEU
    ["OPT_Box_NATO_WpsSpecial_Diver_F", 2],                             // Taucherkiste
    ["OPT_FlexibleTank_01_forest_F", 1],                                //Spritfass
    ["OPT4_ACE_Box_82mm_Mo_HE", 4],                                     //Mörsermuni
// NATO ships               
    ["OPT_B_Boat_Transport_01_F", 4],                                   // Assault Boat     - hinzugefügt
    ["OPT_B_C_Boat_Transport_02_F", 4],                                 // Rhib unbewaffnet - hinzugefügt
// CSAT supplies            
    ["OPT_O_supplyCrate_F", 1],                                         // Transportkiste (leer)
    ["OPT_Box_East_Ammo_F", 2],                                         // Munitionskiste
    ["OPT_Box_East_WpsSpecial_F", 2],                                   // Munition spezial kiste NEUE KISTE!
    ["OPT_Box_East_Grenades_F", 2],                                     // granatenkiste
    ["OPT_CSAT_Sprengstoffkiste", 2],                                   // sprengstoffkiste NEUE KISTE!
    ["OPT_Box_East_WpsSpecial_AT_F", 2],                                // AT Raketenkiste NEUE KISTE!
    ["OPT_Box_East_WpsSpecial_AA_F", 2],                                // AA Raketenkiste
    ["OPT_Box_East_WpsSpecial_Diver_F", 2],                             // Taucherkiste
    ["OPT_O_HMG_01_F", 2],                                              // Stand-MG niedrig,10000
    ["OPT_O_HMG_01_high_F", 2],                                         // Stand-MG hoch,10000
    ["OPT_O_GMG_01_F", 2],                                              // Stand-GMG niedrig,15000
    ["OPT_O_GMG_01_high_F", 2],                                         // Stand-GMG hoch,15000
    ["OPT_O_static_AA_F", 2],                                           // Stand-AA,25000
    ["OPT_O_static_AT_F", 2],                                           // Stand-AT,200000
    ["OPT_O_Mortar_01_F", 2],                                           // MK6 Mörser,200000
    ["B_Mortar_01_F", 2],                                               // MK6 - Mrser
    ["OPT4_ACE_Box_82mm_Mo_HE", 4],                                     // Mörsermuni    
    ["OPT_FlexibleTank_01_sand_F", 1],                                  // Treibstoff-Fass
    ["OPT_Land_Pod_Heli_Transport_04_fuel_F", 8],                       // Fuelcontainer
    ["OPT_Land_Pod_Heli_Transport_04_fuel_black_F", 8],                 // Fuelcontainer (schwarz)
    ["OPT_Land_Pod_Heli_Transport_04_ammo_F", 8],                       // Munitionscontainer
    ["OPT_Land_Pod_Heli_Transport_04_ammo_black_F", 8],                 // Munitionscontainer (Schwarz)
    ["OPT_Land_Pod_Heli_Transport_04_repair_F", 8],                     // Reparaturcontainer
    ["OPT_Land_Pod_Heli_Transport_04_repair_black_F", 8],               // Repcontainer schwarz
    ["OPT_Land_Pod_Heli_Transport_04_repair_radar_F", 8],               // Radar Container NEU
    ["Land_Cargo10_grey_F", 8],                                         // Radar Container NEU - wieder ausgetauscht
    // CSAT Ships           
    ["OPT_O_Boat_Transport_01_F", 4],                                   // Assault Boat,500
    ["OPT_O_C_Boat_Transport_02_F", 4]                                  // rhib unbewaffnet,7000    
];


/**
 * List of class names of objects which can be carried and moved by a player.
 */
 // e.g. : [classname, offset in [x,y,z] from model center, direction]
GVAR(canBeDragged) = 
[                                            
    // NATO supplies    
["OPT_B_CargoNet_01_ammo_F", [0, 2, 0.1], 0],                           // Ausrüstungskiste
    ["OPT_B_supplyCrate_F", [0, 2, 0.1], 0],                            // Transportkiste (leer),500
    ["OPT_Box_NATO_WpsSpecial_Diver_F"],                                // Taucherkiste,5000    
    ["OPT_Box_NATO_Ammo_F"],                                            // Munitionskiste,40000
    ["OPT_Box_NATO_WpsSpecial_F"],                                      // Munition spezial kiste NEUE KISTE!    
    ["OPT_Box_NATO_Grenades_F"],                                        // granatenkiste,75000
    ["OPT_NATO_Sprengstoffkiste"],                                      // sprengstoffkiste,75000 NEUE KISTE!    
     ["OPT_Box_NATO_WpsSpecial_AT3_F"],                                 // AT Raketenkiste (RPG-42),30000 NEUE KISTE!    
    ["OPT_Box_NATO_WpsSpecial_AA_F"],                                   // AA Raketenkiste,40000    
    ["OPT_B_HMG_01_F"],                                                 // Stand-MG niedrig,10000
    ["OPT_B_HMG_01_high_F"],                                            // Stand-MG hoch,10000
    ["OPT_B_GMG_01_F"],                                                 // Stand-GMG niedrig,15000
    ["OPT_B_GMG_01_high_F"],                                            // Stand-GMG hoch,15000
    ["OPT_B_static_AA_F"],                                              // Stand-AA,25000
    ["OPT_B_static_AT_F"],                                              // Stand-AT,200000    
    ["OPT_B_Mortar_01_F"],                                              // MK6 - Mörser,200000
    ["B_Mortar_01_F"],                                                  // MK6 - Mörser
    ["OPT_FlexibleTank_01_forest_F"],                                   //Spritfass
    ["OPT4_ACE_Box_82mm_Mo_HE"],                                        //Mörsermuni
    ["OPT_B_Static_Designator_01_F"],                                   // Remote Designator,10000
    ["OPT_B_Slingload_01_Fuel_F", [0, 5, 0.05], 0],                     // Fuelcontainer,5000
    ["OPT_B_Slingload_01_Ammo_F", [0, 5, 0.05], 0],                     // Munitionscontainer,50000
    ["OPT_B_Slingload_01_Repair_F", [0, 5, 0.05], 0],                   // Reparaturcontainer,5000
    ["OPT_B_Slingload_01_Repair_radar_F", [0, 5, 0.05], 0],         
    ["Land_Cargo10_military_green_F"],                                  // NATO Radar Container
    ["OPT_B_Slingload_01_Medevac_F", [0, 5, 0.05], 0],                 // Lazarettcontainer,5000            //psycho, dieser container verursacht Probleme mit den Load-Scripts und wird durch den weissen Container ersetzt welcher zum Lazarett ausgebaut werden kann
// NATO ships    
    ["OPT_B_Boat_Transport_01_F", [0, 2, 0.1], 0],                      // Assault Boat,500
    ["OPT_B_C_Boat_Transport_02_F", [0, 2, 0.1], 0],                    // Rhib unbewaffnet,2000
    //"OPT_B_Boat_Armed_01_minigun_F",                                  // Speedboat Minigun,10000
    //"OPT_B_SDV_01_F",                                                 // Submarine,2000
//CSAT supplies
    ["OPT_O_CargoNet_01_ammo_F", [0, 2, 0.1], 0],                       // Ausrüstungskiste
    ["OPT_O_supplyCrate_F", [0, 2, 0.1], 0],                            // Transportkiste,500
    ["OPT_Box_East_WpsSpecial_Diver_F"],                                // Taucherkiste,5000
    ["OPT_Box_East_WpsSpecial_AA_F"],                                   // AA Raketenkiste,40000
    ["OPT_Box_East_WpsSpecial_AT_F"],                                   // AT Raketenkiste (RPG-42),30000    NEUE KISTE!    
    ["OPT_Box_East_Ammo_F"],                                            // Munitionskiste,40000
    ["OPT_Box_East_WpsSpecial_F"],                                      // Munition spezial kiste NEUE KISTE!
    ["OPT_Box_East_Grenades_F"],                                        // granatenkiste,75000
    ["OPT_CSAT_Sprengstoffkiste"],                                      // sprengstoffkiste,75000 NEUE KISTE!
    ["OPT_Box_East_WpsLaunch_F"],                                       // HAT-Kiste (Titan),400000
    ["OPT_O_HMG_01_F"],                                                 // Stand-MG niedrig,10000
    ["OPT_O_HMG_01_high_F"],                                            // Stand-MG hoch,10000
    ["OPT_O_GMG_01_F"],                                                 // Stand-GMG niedrig,15000
    ["OPT_O_GMG_01_high_F"],                                            // Stand-GMG hoch,15000
    ["OPT_O_static_AA_F"],                                              // Stand-AA,25000
    ["OPT_O_static_AT_F"],                                              // Stand-AT,200000
    ["OPT_O_Mortar_01_F"],                                              // MK6 Mörser,200000
    ["B_Mortar_01_F"],                                                  // MK6 - Mörser
    ["OPT_FlexibleTank_01_sand_F"],                                     // Treibstoff-Fass
    ["OPT4_ACE_Box_82mm_Mo_HE"],                                        // Mörsermuni
    ["OPT_O_Static_Designator_02_F"],                                   // Remote Designator,10000
    ["OPT_Land_Pod_Heli_Transport_04_fuel_F", [0, 5, 0.05], 0],         // Fuelcontainer,5000
    ["OPT_Land_Pod_Heli_Transport_04_fuel_black_F", [0, 5, 0.05], 0],   // Fuelcontainer (schwarz),5000
    ["OPT_Land_Pod_Heli_Transport_04_ammo_F", [0, 5, 0.05], 0],         // Munitionscontainer,50000
    ["OPT_Land_Pod_Heli_Transport_04_ammo_black_F", [0, 5, 0.05], 0],   // Munitionscontainer (Schwarz),50000
    ["OPT_Land_Pod_Heli_Transport_04_repair_F", [0, 5, 0.05], 0],       // Reparaturcontainer,5000
    ["OPT_Land_Pod_Heli_Transport_04_repair_black_F", [0, 5, 0.05], 0], // Reparaturcontainer (schwarz),5000
    ["OPT_Land_Pod_Heli_Transport_04_repair_radar_F", [0, 5, 0.05], 0], // CSAT Radar Container
    ["Land_Cargo10_grey_F"],                                            // Radar Container NEU
    ["OPT_Land_Pod_Heli_Transport_04_medevac_F", [0, 5, 0.05], 0],      // Lazarettcontainer,5000 //psycho, dieser container verursacht Probleme mit den Load-Scripts und wird durch den weißen Container ersetzt welcher zum Lazarett ausgebaut werden kann
//CSAT ships
    ["OPT_O_Boat_Transport_01_F", [0, 2, 0.1], 0],                      // Assault Boat,500
    //"OPT_O_Boat_Armed_01_hmg_F",                                      / Speedboat HMG,14000
    ["OPT_O_C_Boat_Transport_02_F", [0, 2, 0.1], 0]                     // rhib unbewaffnet,7000
    //"OPT_O_SDV_01_F"                                                  / Submarine,2000    
];

GVAR(canBeCarried) = 
[
 // NATO supplies    
    ["OPT_B_supplyCrate_F"],                                            // Transportkiste (leer),500
    ["OPT_Box_NATO_WpsSpecial_Diver_F"],                                // Taucherkiste,5000    
    ["OPT_Box_NATO_Ammo_F"],                                            // Munitionskiste,40000
    ["OPT_Box_NATO_WpsSpecial_F"],                                      // Munition spezial kiste NEUE KISTE!    
    ["OPT_Box_NATO_Grenades_F"],                                        // granatenkiste,75000
    ["OPT_NATO_Sprengstoffkiste"],                                      // sprengstoffkiste,75000 NEUE KISTE!
    ["OPT_Box_NATO_WpsSpecial_AT3_F"],                                  // AT Raketenkiste (RPG-42),30000 NEUE KISTE!
    ["OPT_Box_NATO_WpsSpecial_AA_F"],                                   // AA Raketenkiste,40000
    ["OPT_B_HMG_01_F"],                                                 // Stand-MG niedrig,10000
    ["OPT_B_HMG_01_high_F"],                                            // Stand-MG hoch,10000
    ["OPT_B_GMG_01_F"],                                                 // Stand-GMG niedrig,15000
    ["OPT_B_GMG_01_high_F"],                                            // Stand-GMG hoch,15000
    ["OPT_B_static_AA_F"],                                              // Stand-AA,25000
    ["OPT_B_static_AT_F"],                                              // Stand-AT,200000
    ["OPT_B_Mortar_01_F"],                                              // MK6 - Mörser,200000
    ["B_Mortar_01_F"],                                                  // MK6 - Mörser,200000
    ["OPT_FlexibleTank_01_forest_F"],                                   // Spritfass
    ["ACE_Box_82mm_Mo_HE"],                                             //Mörsermuni
    ["OPT_B_Slingload_01_Fuel_F", [0, 5, 0.05], 0],                     // Fuelcontainer,5000
    ["OPT_B_Slingload_01_Ammo_F", [0, 5, 0.05], 0],                     // Munitionscontainer,50000
    ["OPT_B_Slingload_01_Repair_F", [0, 5, 0.05], 0],                   // Reparaturcontainer,5000
    ["OPT_B_Slingload_01_Repair_radar_F", [0, 5, 0.05], 0],             // NATO Radar Container
    ["Land_Cargo10_military_green_F"],          
    ["OPT_B_Static_Designator_01_F"],                                   // Remote Designator,10000
//CSAT supplies
    ["OPT_O_supplyCrate_F"],                                            // Transportkiste,500
    ["OPT_Box_East_WpsSpecial_Diver_F"],                                // Taucherkiste,5000
    ["OPT_Box_East_WpsSpecial_AA_F"],                                   // AA Raketenkiste,40000
    ["OPT_Box_East_WpsSpecial_AT_F"],                                   // AT Raketenkiste (RPG-42),30000 NEUE KISTE!    
    ["OPT_Box_East_Ammo_F"],                                            // Munitionskiste,40000
    ["OPT_Box_East_WpsSpecial_F"],                                      // Munition spezial kiste NEUE KISTE!
    ["OPT_Box_East_Grenades_F"],                                        // granatenkiste,75000
    ["OPT_CSAT_Sprengstoffkiste"],                                      // sprengstoffkiste,75000 NEUE KISTE!
    ["OPT_Box_East_WpsLaunch_F"],                                       // HAT-Kiste (Titan),400000
    ["OPT_O_HMG_01_F"],                                                 // Stand-MG niedrig,10000
    ["OPT_O_HMG_01_high_F"],                                            // Stand-MG hoch,10000
    ["OPT_O_GMG_01_F"],                                                 // Stand-GMG niedrig,15000
    ["OPT_O_GMG_01_high_F"],                                            // Stand-GMG hoch,15000
    ["OPT_O_static_AA_F"],                                              // Stand-AA,25000
    ["OPT_O_static_AT_F"],                                              // Stand-AT,200000
    ["OPT_O_Mortar_01_F"],                                              // MK6 Mörser,200000
        ["B_Mortar_01_F"],                                              // MK6 - Mörser,200000
    ["ACE_Box_82mm_Mo_HE"],                                             //Mörsermuni
    ["OPT_Land_Pod_Heli_Transport_04_fuel_F", [0, 5, 0.05], 0],         // Fuelcontainer,5000
    ["OPT_Land_Pod_Heli_Transport_04_fuel_black_F", [0, 5, 0.05], 0],   // Fuelcontainer (schwarz),5000
    ["OPT_Land_Pod_Heli_Transport_04_ammo_F", [0, 5, 0.05], 0],         // Munitionscontainer,50000
    ["OPT_Land_Pod_Heli_Transport_04_ammo_black_F", [0, 5, 0.05], 0],   // Munitionscontainer (Schwarz),50000
    ["OPT_Land_Pod_Heli_Transport_04_repair_F", [0, 5, 0.05], 0],       // Reparaturcontainer,5000
    ["OPT_Land_Pod_Heli_Transport_04_repair_black_F", [0, 5, 0.05], 0], // Reparaturcontainer (schwarz),5000
    ["OPT_Land_Pod_Heli_Transport_04_repair_radar_F", [0, 5, 0.05], 0], // CSAT Radar Container
    ["Land_Cargo10_grey_F"],                                            // CSAT Radar Container NEU
    ["OPT_FlexibleTank_01_sand_F"]                                      // Treibstoff-Fass
];