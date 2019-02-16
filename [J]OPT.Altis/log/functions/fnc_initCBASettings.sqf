/**
* Author: James
* initialize CBA settings
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_initCBASettings.sqf;
*
*/
#include "script_component.hpp"

[
    QGVAR(distanceFromBase), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Entfernung, ab der ein Transportflug gewertet wird", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Log-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [100, 1000, 500, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(fpsUpdateTime), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Update-Intervall für FPS-Log in Sekunden", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Log-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [1, 600, 60, 1], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(playerCountUpdateTime), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Update-Intervall für Spieler-Log in Sekunden", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Log-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [1, 600, 300, 1], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;