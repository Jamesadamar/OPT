/**
* Description:
* if freeze is enabled, player are freezed until freeze time or intro is over
*
* Author:
* James
*
* Arguments:
* None
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - script should only be called once by XEH_PostInit.sqf on each client
*
* Global:
* no - effects are local on all clients
*
* Sideeffects:
* freeze player (unable to move and ignore all inputs besides ESC)
*
* Example:
* [] spawn EFUNC(freeze,freeze);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */
if (EGVAR(training,on)) exitWith{};
waitUntil {time > 1}; // already called during briefing! So we have to wait until player is ingame
waitUntil { EGVAR(serverclock,startTime) != 0 };

/* CODE BODY */
// freeze player until all players have finished intro
// or - if intro is off -, for the duration of the freeze time
private _checkCondition =
{
    if (EGVAR(intro,on)) then
    {
        !EGVAR(intro,allDone)
    } else
    {
        private _timeElapsed = serverTime - EGVAR(serverclock,startTime);
        _timeElapsed < (GVAR(freezeTime) * 60)
    };
};

disableUserInput true;

while {[] call _checkCondition} do {
    uiSleep 1;
};

// make sure input is enabled again
waitUntil{disableUserInput false; !userInputDisabled;};

