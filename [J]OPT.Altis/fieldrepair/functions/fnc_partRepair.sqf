/**
* Description:
* repair all easy parts of a vehicle during field repair up to a certain threshold
*
* Author:
* James
*
* Arguments:
* 0: <TYPE> vehicle to repair
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only via ACE interaction menu and is part of FUNC(lightRepair)
*
* Global:
* yes - vehicle is globally repaired
*
* Sideeffects:
* no
*
* Example:
* [vehicle player] call EFUNC(fieldrepair,partRepair);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
   ["_veh", objNull, [objNull], 1]
];

/* VALIDATION */
if (_veh isEqualTo objNull) exitWith {false};

/* CODE BODY */
// repair each part if it is damaged more than 30%, but repair only 90%
(getAllHitPointsDamage _veh select 0) apply
{
    private _dmg = _veh getHitPointDamage _x;
    private _isHardPart = [_x] call FUNC(isHardPart);

    if (_dmg > 0 and not _isHardPart) then
    {
        if ( _dmg > FIELDREPAIR_MIN_DAMAGE_FOR_EASY_PARTS) then
        {
            [_veh, [_x, 0.1]] remoteExecCall ["setHitPointDamage", _veh, true];
        };
    };

    // engineers are allowed to repair guns and turrets during field repair
    if
    (
        GVAR(engineerCanRepairGun) and
        (typeOf player) in GVARMAIN(engineers) and
        (tolower _x) in ["hitgun", "hitturret"] and
        _dmg > 0.5
    ) then
    {
        [_veh, [_x, 0.5]] remoteExecCall ["setHitPointDamage", _veh, true];
    };

};

[_veh] call FUNC(setMinFuel);

true