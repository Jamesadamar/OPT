#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;

/* INITIALIZE GLOBAL VARS */
// list all global variables used within the component
// define variable with default value!
// GVAR(...)
GVAR(hardRepairParts) = []; // list of hard repair parts
GVAR(mutexAction) = false; // true if another action is ongoing

// CBA settings
[] call FUNC(initCBASettings);

[] call FUNC(preInit);