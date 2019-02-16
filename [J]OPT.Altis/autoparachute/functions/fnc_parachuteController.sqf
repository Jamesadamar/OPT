/**
* Description:
* Add a new action to the player's action menu for opening a parachute or
* directly open parachute when player is too low
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> unit
* 1: <OBJECT> vehicle
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only by GetOutMan EH
*
* Global:
* no
*
* Sideeffects:
* either open parachute or give player addAction
*
* Example:
* [] call EFUNC(autoparachute,parachuteController);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
   ["_unit", objNull, [objNull], 1],
   ["_vec", objNull, [objNull], 1]
];

/* VALIDATION */
if (_unit isEqualTo objNull or _vec isEqualTo objNull) exitWith{};
if !(_vec isKindOf "Air") exitWith{};
if (vehicle player != player) exitWith{};

private _isWater = surfaceIsWater position _vec;
private _pos =  [getPosATL _unit, getPosASLW _unit] select _isWater;
if (_pos select 2 < GVAR(minHeight) and _pos select 2 > 50) exitWith{[_unit] spawn FUNC(openParachute);};
if (_pos select 2 < GVAR(minHeight)) exitWith{};

/* CODE BODY */
// give unit action menu entry to open prachute
// if player does not use it, open parachute when player is too low
_unit addAction
[
	AUTOPARACHUTE_ACTION_TEXT,
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		// open parachute and directly delete option
		_caller removeAction _actionId;
		[_caller] spawn FUNC(openParachute);
	},
	[],
	6,
	true,
	true,
	"",
	format["[_target, _this, _originalTarget] call %1;", QFUNC(actionCondition)]
];