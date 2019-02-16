/**
* Description:
* initialize server side EH
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
* yes
*
* Public:
* no - should be called only at mission start via XEH_PostInit.sqf
*
* Global:
* no
*
* Sideeffects:
* start intro on each connecting client if not jip and intro is activated
*
* Example:
* [] call EFUNC(intro,initServerMissionEH);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
GVAR(EH_PlayerConnected) = addMissionEventHandler
[
    "PlayerConnected",
    {
        /*
        id: Number - unique DirectPlay ID (very large number). It is also the same id used for user placed markers (same as _id param)
        uid: String - getPlayerUID of the joining client. The same as Steam ID (same as _uid param)
        name: String - profileName of the joining client (same as _name param)
        jip: Boolean - didJIP of the joining client (same as _jip param)
        owner: Number - owner id of the joining client (same as _owner param)
        */
        params ["_id", "_uid", "_name", "_jip", "_owner"];
        //LOG_2("PlayerConnected - jip: %1 - owner: %2",_jip,_owner);
        if (_uid isEqualTo "") exitWith{};

        if (GVAR(on) and !EGVAR(training,on) and !(_jip)) then
        {
            [] remoteExec [QFUNC(intro), _owner, false];
            HASH_SET(GVAR(introHash),_uid,false); // remember that client is in intro
        };

    }
];