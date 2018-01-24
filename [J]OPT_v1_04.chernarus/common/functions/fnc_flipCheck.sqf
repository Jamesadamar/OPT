/**
* Author: James
* check if vehicle is flipped around
*
* Arguments:
* 0: <OBJECT> vehicle to check
* 1: <OBJECT> unit to give action to flip
*
* Return Value:
* None
*
* Example:
* [vec, unit] call fnc_flipCheck.sqf;
*
*/
#include "script_component.hpp"

params ["_target", "_caller"];

_cond = false;

if 
	(
		(speed _target < 1) and 
		((_target distance _caller) < 10) and 
		(_target isKindOf 'landVehicle') and 
		(alive _target) and 
		((vectorUp _target) select 2 < 0.4)
	) then {
	_cond = true;
};

_cond