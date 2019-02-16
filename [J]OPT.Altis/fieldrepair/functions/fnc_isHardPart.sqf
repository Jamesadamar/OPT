/**
* Description:
* check if a hit point is a hard repair part
*
* Author:
* James
*
* Arguments:
* 0: <STRING> hit point name
*
* Return Value:
* <BOOL> true - it is a hard part, false - otherwise
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
* ["HitEngine"] call EFUNC(fieldrepair,isHardPart);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
   ["_hitPoint", "", [""], 1]
];

/* VALIDATION */
private _ret = false;
if (_hitPoint isEqualTo "") exitWith{_ret};

/* CODE BODY */
if (_hitPoint in GVAR(hardRepairParts)) exitWith{true};

GVAR(hardRepairParts) apply
{
	if ((tolower _hitPoint) find (tolower _x) != -1) exitWith{_ret = true};
};

_ret