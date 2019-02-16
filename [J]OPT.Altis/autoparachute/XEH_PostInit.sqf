#include "script_component.hpp"

/*
    this line is commented, otherwise it would disturb the linter.
["LandVehicle", "init", FUNC(onInit), nil, nil, true] call CBA_fnc_addClassEventHandler;
*/

if (!GVAR(on)) exitWith{};

if (hasinterface) then
{
    [] call FUNC(initPlayerEvents);
};