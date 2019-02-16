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
    "Aktiviert die Berggang-Komponente", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Komponenten", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

if (!GVAR(on)) exitWith{};

[
    QGVAR(maxSpeed), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Max. Geschwindigkeit", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Berggang", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 50, 30, 0], // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(maxIntensity), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Max. Intensität", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Berggang", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [1, 5, 2, 0], // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(boost), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Boost Faktor", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Berggang", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.1, 1, 0.25, 2], // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(updateInterval), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Update-Intervall in Sek.", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Berggang", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.05, 1, 0.1, 2], // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(maxDamageToTracksOrWheels), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Max. zulässiger Schaden an Ketten oder Rädern", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Berggang", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.1, 1, 0.3, 1], // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(minGradient), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Min. Steigung im Gelände", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Berggang", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.05, 1, 0.10, 2], // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;