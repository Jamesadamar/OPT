/**
* Description:
* log player count on each side in given interval
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
* yes - only server logs player count
*
* Public:
* no - should be called only once at mission start via XEH_PostInit.sqf
*
* Global:
* no
*
* Sideeffects:
* write player count into server rpt
* 
* Example:
* [] spawn EFUNC(log,logPlayerCount);
*
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
// log fps only after mission start
waitUntil {time > 1};

while {true} do {

    private _message = format["NATO %1 - CSAT %2", west countSide allPlayers, east countSide allPlayers];
	["Spieleranzahl", _message] call FUNC(write);

    sleep GVAR(playerCountUpdateTime);
};