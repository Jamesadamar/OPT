/**
* Author: James
* repair a vehicle with rep truck
*
* Arguments:
* 0: <OBJECT> vehicle to repair
* 1: <OBJECT> repair truck or engineer
*
* Return Value:
* None
*
* Example:
* [vehicle] call fnc_needRepair.sqf;
*
*/
#include "script_component.hpp"

/* PARAMS */
params
[
    ["_veh", objNull, [objNull], 1],
    ["_truck", objNull, [objNull], 1]
];

/* VALIDATION */
if (_veh isEqualTo objNull or _truck isEqualTo objNull) exitWith {false};

/* CODE BODY */
// inform player if anything is wrong
if (GVAR(mutexAction)) exitWith {
    ["Feldreparatur", STR_ANOTHER_ACTION, "yellow"] call EFUNC(gui,message);
};

private _truckIsEngineer = _truck isKindOf "CAManBase";
if (!_truckIsEngineer and _truck getVariable [QGVAR(repair_cargo), 0] <= 0) then {
    ["Feldreparatur", STR_REPAIR_TRUCK_DEPLETED, "yellow"] call EFUNC(gui,message);
};

GVAR(mutexAction) = true;
private _maxlength = _veh getVariable [QGVAR(hardRepTimeLeft), GVAR(fullRepairTime)];
private _vehname = getText ( configFile >> "CfgVehicles" >> typeOf(_veh) >> "displayName");
private _startTime = time;

/*
    * Arguments:
    * 0: Total Time (in game "time" seconds) <NUMBER>
    * 1: Arguments, passed to condition, fail and finish <ARRAY>
    * 2: On Finish: Code called or STRING raised as event. <CODE, STRING>
    * 3: On Failure: Code called or STRING raised as event. <CODE, STRING>
    * 4: (Optional) Localized Title <STRING>
    * 5: Code to check each frame (Optional) <CODE>
    * 6: Exceptions for checking EFUNC(common,canInteractWith) (Optional)<ARRAY>
*/
[
    _maxlength,
    [_veh, _truck, _startTime, _maxlength],
    {
        (_this select 0) params ["_veh", "_truck"];

        ["Feldreparatur", STR_REPAIR_FINISHED, "green"] call EFUNC(gui,message);
        [_veh] remoteExecCall [QFUNC(fullRepair), _veh, false]; // called where vehicle is local!
        _veh setVariable [QGVAR(hardRepTimeLeft), nil, true];

        if (!_truckIsEngineer) then
        {
            _truck setVariable [
                QGVAR(repair_cargo),
                ((_truck getVariable [QGVAR(repair_cargo), 0]) - (1 / GVAR(repairTruckUseCount))),
                true
            ];
        };

    },
    {
        (_this select 0) params ["_veh", "_truck", "_startTime", "_maxlength"];

        ["Feldreparatur", STR_REPAIR_INTERRUPTED, "red"] call EFUNC(gui,message);
        // store rep time on vehicle so next repair goes faster
        _veh setVariable [QGVAR(hardRepTimeLeft), _maxlength - (time - _startTime), true];

    },
    format[STR_REPAIR_MSG_STRING, _maxlength, _vehname],
    {
        (_this select 0) params ["_veh", "_truck"];

        alive player and
        player getVariable ["FAR_isUnconscious", 0] == 0 and // behebt Fehler, dass bewusstlose Soldaten weiter reparieren // TODO:
        alive _truck and
        alive _veh and
        speed _veh <= 3 and
        speed _truck <= 3 and
        _veh distance _truck <= GVAR(maxDistanceToRepairTruck)
    },
    ["isnotinside"]
] call ace_common_fnc_progressBar;

GVAR(mutexAction) = false;
