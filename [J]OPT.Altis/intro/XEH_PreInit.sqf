#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;

/* INITIALIZE GLOBAL VARS */
// list all global variables used within the component
// define variable with default value!
GVAR(allDone) = false; // variable is set to true after intro on all clients has finished.
GVAR(introHash) = HASHCREATE; // list of players and their status

// initialize CBA Settings
[] call FUNC(initCBASettings);
