#include "script_component.hpp"

/*
    this line is commented, otherwise it would disturb the linter.
["LandVehicle", "init", FUNC(onInit), nil, nil, true] call CBA_fnc_addClassEventHandler;
*/

if (local player) then {
    [] call FUNC(postInit);
    [] call FUNC(initPlayerMissionEH);
    [] call FUNC(initPlayerCBAEvents);
};

if (isServer) then {    
    [] call FUNC(initServerMissionEH);
};