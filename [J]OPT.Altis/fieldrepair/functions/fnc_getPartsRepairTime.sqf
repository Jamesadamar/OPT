/**
* Description:
* calculate repair time in dependence of vehicle damage
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> vehicle
*
* Return Value:
* <NUMBER> repair time in seconds
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
* [vehicle player] call EFUNC(fieldrepair,getPartsRepairTime);
*/
#include "script_component.hpp"

/* PARAMS */
params [["_veh", objNull]];

/* VALIDATION */
private _rprTime = 0;
if (_veh isEqualTo objNull) exitWith {_rprTime};

/* CODE BODY */
(getAllHitPointsDamage _veh select 0) apply
{
    private _cdmg = _veh getHitPointDamage (_x);

    if (_cdmg > FIELDREPAIR_MIN_DAMAGE_FOR_EASY_PARTS) then
    {
        if ([_x] call FUNC(isHardPart)) then
        {
            _rprTime = _rprTime + GVAR(repairTimeHardPart);

        } else
        {
            _rprTime = _rprTime + GVAR(repairTimeEasyPart);

        };

    };

};

_rprTime

