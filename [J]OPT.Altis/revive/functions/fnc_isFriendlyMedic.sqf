/**
* Author: James
* check if unit is friendly medic
*
* Arguments:
* 0: <OBJECT> unit to check
*
* Return Value:
* 0: <BOOL> true - if unit is medic, false - otherwise
*
* Example:
* [] call fnc_isFriendlyMedic.sqf;
*
*/
#include "script_component.hpp"

params ["_unit"];

private _return = false;

if
(
    alive _unit and
    (UNIT_SIDE(_unit)) isEqualTo (PLAYER_SIDE) and
    _unit getVariable ["FAR_isUnconscious", 0] == 0 and
    _unit call FUNC(isMedic)
) then
{
   _return = true;
};

_return