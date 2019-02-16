#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;

// CBA settings
[] call FUNC(initCBASettings);

[] call FUNC(setup_flagPositions);
