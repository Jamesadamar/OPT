/**
* Description:
* initialize CBA settings
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
* no - should be called only once from XEH_PreInit.sqf at mission start
*
* Global:
* no
*
* Sideeffects:
* yes - create a new setting in the game addons options (according to category and name)
*
* Example:
* [] call EFUNC(beam,initCBASettings);
*/
#include "script_component.hpp"

[
    QGVAR(on), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Aktiviert die Freeze-Komponente", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Komponenten", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

if (!GVAR(on)) exitWith{};

[
    QGVAR(freezeTime), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Freeze-Time in Min.", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Freeze", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 5, 0, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;