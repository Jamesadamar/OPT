/**
* Description:
* create parachute and move player in as driver
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> unit
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only by parachuteController.sqf
*
* Global:
* no
*
* Sideeffects:
* atach parachute to unit
* delete parachute after landing
*
* Example:
* [player] call EFUNC(autoparachute,openParachute);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
   ["_unit", objNull, [objNull], 1]
];

/* VALIDATION */
if (_unit isEqualTo objNull) exitWith{};
if (vehicle player != player) exitWith{};
if (GVAR(actionID) != -1) exitWith{};

/* CODE BODY */
// use different getPos commands depending on surface type
[
    GVAR(openingTime),
    [_unit],
    {
        (_this select 0) params ["_unit"];

        private _isWater = surfaceIsWater position _unit;

        private _parachute = createVehicle ["Steerable_Parachute_F", [0,0,0], [], 0, "FLY"];
        private _pos =  [getPosATL _unit, getPosASLW _unit] select _isWater;
        [_parachute setPosATL _pos, parachute setPosASLW _pos] select _isWater;

        _unit moveinDriver _parachute;

        [_parachute] spawn
        {
            params ["_parachute"];
            waitUntil {driver _parachute isEqualTo objNull};
            deleteVehicle _parachute;
        }

    },
    {
        ["Fallschirm", AUTOPARACHUTE_OPEN_PARACHUTE_CANCLE, "red"] call EFUNC(gui,message);
    },
    AUTOPARACHUTE_OPEN_PARACHUTE_PROGRESS_BAR_TXT,
    {
        (_this select 0) params ["_unit"];

        alive _unit
    }
] call ace_common_fnc_progressBar;