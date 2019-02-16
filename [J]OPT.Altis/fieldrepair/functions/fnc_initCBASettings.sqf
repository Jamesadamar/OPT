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
    QGVAR(on), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Aktiviert die Fieldrepair-Komponente", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Komponenten", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

if (!GVAR(on)) exitWith{};

[
    QGVAR(engineerCanRepairGun), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Ingenieure können Geschütze mit der Feldreparatur reparieren", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(minDamageOnAnyPart), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Mindestschaden, ab dem eine Reparatur möglich ist", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.1, 1, 0.6, 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(repairTimeEasyPart), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Zeit für die Reparatur normaler Teile", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 60, 15, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(repairTimeHardPart), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Zeit für die Reparatur schwerer Teile", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 120, 30, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
   QGVAR(maxFieldRepairTime), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Max. Zeit für die Feld-Reparatur", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [60, 600, 240, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(fullRepairTime), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Zeit für die Komplett-Reparatur", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [60, 300, 120, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(repairTruckUseCount), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Anzahl Reparaturen pro Rep-LKW", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [1, 10, 5, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(freeRepairCount), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Anzahl freie Feld-Reparaturen pro Einheit", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [1, 5, 1, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    QGVAR(maxDistanceToRepairTruck), // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Max. Entfernung in m des Rep-LKW bei Komplettreparatur", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Feldreparatur", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 100, 25, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;





