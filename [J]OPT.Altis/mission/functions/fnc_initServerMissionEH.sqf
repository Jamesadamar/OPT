/**
* Author: James
* initialize server mission EH
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_initServerMissionEH.sqf;
*
*/
#include "script_component.hpp"

GVAR(EH_EntityRespawned) = addMissionEventHandler
[
    "EntityRespawned",
    {
        params ["_newEntity", "_oldEntity"];

        // respawn costs
        if !(_oldEntity isEqualTo objNull) then
        {
            // add to zeus
            [_newEntity] remoteExecCall [QEFUNC(common,addToCurator), 2, false];

            // Kosten für Seite abziehen + log
            private _cost = [] call EFUNC(common,respawnCost);

            [
                UNIT_NAME(_newEntity),
                UNIT_SIDE(_newEntity),
                typeOf _newEntity,
                _cost,
                "-",
                "respawn"
            ] call EFUNC(common,updateBudget);
            ["Respawn", format["Spieler: %1", UNIT_NAME(_newEntity)]] call EFUNC(log,write);

            // reset earplugs
            {GVAR(earplugsInUse) = 1;} remoteExecCall ["call", _newEntity, false];

        };

        // renew zeus
        [_newEntity] call EFUNC(common,renewCurator);

    }
];

GVAR(EH_EntityKilled) = addMissionEventHandler
[
    "EntityKilled",
    {
        params ["_killed", "_killer", "_instigator", "_useEffects"];

        // Funkgeräte löschen
        _inventory = (assignedItems _killed) + (items _killed);
        if ((backpack _killed find "TFAR_" == 0) or (backpack _killed find "tf_" == 0)) then
        {
            removeBackpackGlobal _killed;
        };

        _inventory apply {
            if ((_x find "TFAR_" == 0) or (_x find "tf_" == 0)) then {
                _killed unassignItem _x;
                _killed removeItem _x;

            };
        };

    }
];

// delete body if unit disconnects
GVAR(EH_PlayerDisconnected) = addMissionEventHandler
[
    "PlayerDisconnected",
    {
        /*
            id: Number - unique DirectPlay ID (very large number). It is also the same id used for user placed markers (same as _id param)
            uid: String - getPlayerUID of the leaving client. The same as Steam ID (same as _uid param)
            name: String - profileName of the leaving client (same as _name param)
            jip: Boolean - didJIP of the leaving client (same as _jip param)
            owner: Number - owner id of the leaving client (same as _owner param)
        */
        params ["_id", "_uid", "_name", "_jip", "_owner"];

        playableUnits apply {
            if (_x getVariable [QGVARMAIN(ownerID), 0] == _owner) then {
                deleteVehicle _x;
            };

        };

        if !(_jip) then {
            HASH_REM(GVAR(introHash),_uid); // remove player from intro hash so that we do not wait infinitely
        }
    }
];