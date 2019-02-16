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
    "Aktiviert die Revive-Komponente", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT Komponenten", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // Default value <BOOLEAN>
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

if (!GVAR(on)) exitWith{};

[
    "FAR_REVIVE_BLEEDOUT", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Zeit bis zum Ausbluten", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [60, 1200, 600, 0], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_DEATH_MESSAGE", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Zeige Namen des Schützen", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // [min, max, default, decimal]
    0, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_3D_ICONS", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Zeige 3D-Marker für Verwundete", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_DOWN_MARKER", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Zeige Karten-Marker für Verwundete", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_CALL_NEARBY_MEDICS", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Zeige Entfernung bis zum nächsten Sanitäter", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false, // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_MAX_DAMAGE", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Maximaler Schaden bis zur Bewusstlosigkeit", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 0.99, 0.95, 2], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_NEARBY_MEDIC_DISTANCE", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Radius, in dem verbündete Sanitäter erkannt werden", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [50, 500, 300, 0], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_FIRST_AID_TIME", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Dauer der Eigenversorgung", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 60, 30, 0], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_STABILIZE_TIME", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Dauer des Stabilisierens", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 60, 20, 0], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_REVIVE_TIME", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Dauer der Wiederbelebung", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [10, 60, 10, 0], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_FIRST_AID_MIN_DAMAGE", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Minimalschaden, ab dem Behandlung möglich wird", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 1, 0.3, 1], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;

[
    "FAR_REVIVE_FIRST_AID_MULTIPLIER", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Erhöhung des Schadens pro Selbstheilung", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "OPT San-System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 1, 0.05, 1], // [min, max, default, decimal]
    1, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {} // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;


