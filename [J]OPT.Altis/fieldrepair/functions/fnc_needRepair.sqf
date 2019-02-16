/**
* Description:
* check if a vehicle needs repair
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> vehicle to check
*
* Return Value:
* <BOOL> true - vehicle needs repair, false - otherwise
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
* [vehicle player] call EFUNC(fieldrepair,needRepair);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
	["_veh", objNull, [objNull], 1]
];

/* VALIDATION */
private _ret = false;
if (_veh isEqualTo objNull) exitWith{_ret};

/* CODE BODY */
private _isDamaged = [_veh] call FUNC(vehicleDamaged);

_ret =
(
	alive player and
	alive _veh and
	(vehicle player == player) and
	speed _veh < 3 and
	not GVAR(mutexAction) and
	_isDamaged
);

_ret
