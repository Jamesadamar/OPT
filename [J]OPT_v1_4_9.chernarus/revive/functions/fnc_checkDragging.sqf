/**
* Author: James
* check whether player can drag target 
*
* Arguments:
* 0: <OBJECT> target add action is attached to
* 1: <OBJECT> unit that called the add action
*
* Return Value:
* 0: <BOOL> true - patient can be dragged, false - otherwise
*
* Example:
* [cursorObject, player] call fnc_checkDragging.sqf;
*
*/
#include "script_component.hpp"

params ["_target", "_caller"];

private _return = false;
private _isPlayerUnconscious = _caller getVariable "FAR_isUnconscious";

if (!alive _caller || {_isPlayerUnconscious == 1} || {FAR_isDragging} || {isNil "_target"} || {!alive _target} || {!isPlayer _target && !FAR_Debugging} || {(_target distance _caller) > 5}) exitWith {
	_return;
};

// Target of the action
private _isTargetUnconscious = _target getVariable "FAR_isUnconscious";
private _isDragged = _target getVariable "FAR_isDragged"; 

if (_isTargetUnconscious == 1 && {_isDragged == 0}) then {
	_return = true;
};

_return