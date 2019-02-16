/**
* Author: James
* calculate current dominator according to the flags hold by this side
*
* Arguments:
* None
*
* Return Value:
* 0: <SIDE> side of dominator, sideUnknown if none
*
* Example:
* [] call fnc_calcDominator.sqf;
*
*/
#include "script_component.hpp"

private _allFlags = ((GVARMAIN(westFlags) + GVARMAIN(eastFlags)) apply {_x getVariable ["owner", sideUnknown]});
private _csat_owner = {_x isEqualTo east} count _allFlags;
private _nato_owner = {_x isEqualTo west} count _allFlags;

_side = switch (true) do {
    case (_csat_owner > _nato_owner) : {east};
    case (_nato_owner > _csat_owner) : {west};
    case (_nato_owner == _csat_owner) : {sideUnknown};    // nobody
};

_side