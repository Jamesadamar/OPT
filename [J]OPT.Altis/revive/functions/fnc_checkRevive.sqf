/**
* Author: James
* check whether player can revive target
*
* Arguments:
* 0: <OBJECT> target add action is attached to
* 1: <OBJECT> unit that called the add action
*
* Return Value:
* 0: <BOOL> true - patient can be revived, false - otherwise
*
* Example:
* [cursorObject, player] call fnc_checkRevive.sqf;
*
*/
#include "script_component.hpp"

params ["_target", "_caller"];


private _return = false;
// Unit that will excute the action
private _isPlayerUnconscious = _caller getVariable "FAR_isUnconscious";

// Make sure player is alive and target is an injured unit
if(!alive _caller || {_isPlayerUnconscious == 1} || {FAR_isDragging} || {isNil "_target"} || {!alive _target} || {!isPlayer _target && !FAR_Debugging} || {(_target distance _caller) > 5}) exitWith {
	_return
};

private _isTargetUnconscious = _target getVariable "FAR_isUnconscious";
private _isDragged = _target getVariable "FAR_isDragged";
private _Handler = _target getVariable "FAR_healer";

// Make sure target is unconscious and _caller is a medic
if
(
	_isTargetUnconscious == 1 and
	_isDragged == 0 and
	isNull _Handler and
	[_caller] call FUNC(isMedic)
) then
{
	_return = true;
	// [ReviveMode] Check if _caller has a Medikit
	if (!("Medikit" in (items _caller)) ) then {
		_return = false;
	};
};

_return