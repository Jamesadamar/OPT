#include "script_component.hpp"

/*
    this line is commented, otherwise it would disturb the linter.
["LandVehicle", "init", FUNC(onInit), nil, nil, true] call CBA_fnc_addClassEventHandler;
*/

if (isServer) then {
    {
        _x addEventHandler ["killed", {
            (_this select [0,2]) call FUNC(handleDeadVehicle);
        }];
    } forEach vehicles;
};

GVAR(EH_PreloadFinished) = addMissionEventHandler ["PreloadFinished",  {
    /*  	
        Executes assigned code after the mission preload screen. Stackable version of onPreloadFinished. 
    */
    if (local player) then {
       
    };

    if (isServer) then {
       [] call FUNC(createMenu);
    };

}];