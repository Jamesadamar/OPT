/**
* Description:
* check condition for parachute action menu entry
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> the object to which action is attached or, if the object is a unit inside of vehicle, the vehicle
* 1: <OBJECT> caller person to whom the action is shown (or not shown if condition returns false)
* 2: <OBJECT> the original object to which the action is attached, regardless if the object/unit is in a vehicle or not
*
* Return Value:
* <BOOLEAN> true - action is valid, false - otherwise
*
* Server only:
* no
*
* Public:
* no
*
* Global:
* no
*
* Sideeffects:
* remove action from player if condition is no longer true
* open parachute if condition is false
*
* Example:
* [player, player, player] call EFUNC(autoparachute,actionCondition);
*/
#include "script_component.hpp"

/* PARAMS */
params ["_target", "_this", "_originalTarget"];

/* VALIDATION */
if !(_target isEqualTo _this) exitWith {false};

/* CODE BODY */
private _isWater = surfaceIsWater position _target;
private _pos =  [getPosATL _target, getPosASLW _target] select _isWater;

if (_pos select 2 < GVAR(minHeight)) then
{
	false
} else
{
	true
}
