/**
* Author: James
* log average and min fps each second on client and send to server after one minute
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_logFPS.sqf;
*
* Public:
* yes
*/
#include "script_component.hpp"

// log fps only after mission start
waitUntil {time > 1};

// log fps each update intervall on server
private _name = ["SERVER", PLAYER_NAME] select hasInterface;

while {true} do {

    [_name, diag_fps, diag_fpsMin] remoteExecCall [QFUNC(storeFPS), 2, false];

    sleep GVAR(fpsUpdateTime);
};