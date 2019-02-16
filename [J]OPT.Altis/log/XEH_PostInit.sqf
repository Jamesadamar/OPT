#include "script_component.hpp"

/*
    this line is commented, otherwise it would disturb the linter.
["LandVehicle", "init", FUNC(onInit), nil, nil, true] call CBA_fnc_addClassEventHandler;
*/

if (isServer) then {
    [] call FUNC(initCBAClassEvents);
    [] spawn FUNC(logFPS);
    [] spawn FUNC(logPlayerCount);
};


if (hasInterface) then {
    [getPlayerUID player, profileName, playerSide] remoteExecCall [QFUNC(updatePlayerList), 2, false];

    [] spawn FUNC(logFPS);
};
