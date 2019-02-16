/**
* Description:
* check all hitpoints of a vehicle for damage above threshold
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> vehicle to check
*
* Return Value:
* <BOOL> true - if any hitpoint is damaged greater than a threshold, false - otherwise
*
* Server only:
* no
*
* Public:
* yes
*
* Global:
* no
*
* Sideeffects:
* no
*
* Example:
* [vehicle player] call EFUNC(fieldrepair,vehicleDamaged);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
    ["_veh", objNull, [objNull], 1]
];

/* VALIDATION */
private _ret = false;
if (_veh isEqualTo objNull) exitWith {_ret};

/* CODE BODY */
private _type = typeOf _veh;


private _damagedParts = (getAllHitPointsDamage _veh select 2) select {_x > GVAR(minDamageOnAnyPart)};

if (count _damagedParts > 0) then
{
    _ret = true;
};

_ret
