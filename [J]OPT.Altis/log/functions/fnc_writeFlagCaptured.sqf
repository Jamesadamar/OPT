/**
* Author: James
* log changed capture status of given flag
*
* Arguments:
* 0: <OBJECT> flag that was captured
* 1: <OBJECT> unit that captured the flag
*
* Return Value:
* None
*
* Example:
* [flag, player] call writeFlagCaptured.sqf;
*
* Server only:
* yes
*
* Public:
* no
*/
#include "script_component.hpp"

/* PARAMS */
params [
   ["_flag", objNull, [objNull], 1],
   ["_unit", objNull, [objNull], 1]
];

/* VALIDATION */
if (_flag isEqualTo objNull or _unit isEqualTo objNull) exitWith{};

/* CODE BODY */
private _name = UNIT_NAME(_unit);
private _side = UNIT_SIDE(_unit);
private _message = "";

// determine side of player and flag and log with correct message
switch (_side) do {
    case west: {
        if (_flag in GVARMAIN(westFlags)) then {
            _message = format ["NATO Flagge gesichert von %1", _name];
        } else {
            _message = format ["CSAT Flagge erobert von %1", _name];
        };
    };

    case east: {
        if (_flag in GVARMAIN(eastFlags)) then {
            _message = format ["CSAT Flagge gesichert von %1", _name];
        } else {
            _message = format ["NATO Flagge erobert von %1", _name];
        };
    };

    default {};
};

["Fahne", _message] call FUNC(write);