/**
* Description:
* calculate dynamic respawn cost in dependence of remaining bleedout time
* 
* Author: 
* James
*
* Arguments:
* None
*
* Return Value:
* <NUMBER> respawn cost for current unit
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
* [] call EFUNC(common,respawnCost);
*
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */

// max cost until half of bleedout time
private _cost = linearConversion
[
    0, 
    FAR_REVIVE_BLEEDOUT,
    EGVAR(revive,bleedOut) + 10 - time,
    GVARMAIN(respawnCostMin), 
    GVARMAIN(respawnCostMax),
    true
];

_cost
