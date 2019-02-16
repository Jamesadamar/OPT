/**
* Description:
* inform server about player intro status
*
* Author:
* James
*
* Arguments:
* 0: <STRING> uid of player
*
* Return Value:
* None
*
* Server only:
* yes
*
* Public:
* no - should be called only after finishing intro by FUNC(intro)
*
* Global:
* no
*
* Sideeffects:
* change value in GVAR(introHash)
*
* Example:
* [getPlayerUID] call EFUNC(intro,updateIntroStatus);
*/
#include "script_component.hpp"

/* PARAMS */
params [
    ["_uid", "", [""], 1]
];

/* VALIDATION */
if (_uid isEqualTo "" or !(HASH_HASKEY(GVAR(introHash),_uid))) exitWith{};

/* CODE BODY */
HASH_REM(GVAR(introHash),_uid);

if (HASH_SIZE(GVAR(introHash)) == 0) then {
    GVAR(allDone) = true;
    publicVariable QGVAR(allDone);
};