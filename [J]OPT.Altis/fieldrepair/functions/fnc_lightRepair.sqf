/**
* Description:
* conduct a field repair on vehicle. Uses ACE progress bar
*
* Author:
* James
*
* Arguments:
* 0: <OBJECT> vehicle to repair
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called via ACE interaction menu on vehicle
*
* Global:
* no
*
* Sideeffects:
* plays animation for given player
* show ACE progress bar during fieldrepair
* increase GVAR(noRepairs) of vehicle by 1
* when aborted, set GVAR(easyRepTimeLeft) to time left on repair
*
* Example:
* [vehicle player] call EFUNC(fieldrepair,lightRepair);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
    ["_veh", objNull, [objNull], 1]
];

/* VALIDATION */
if (_veh isEqualTo objNull) exitWith{false};

// if another action is ongoing
if (GVAR(mutexAction)) exitWith {
    ["Feldreparatur", STR_ANOTHER_ACTION, "yellow"] call EFUNC(gui,message);
};

// if player has no tool kit or vehicle was repaired more often than free repair
if
(
    !(typeOf player in (GVARMAIN(pioniers) + GVARMAIN(engineers))) and
    (_veh getVariable [QGVAR(noRepairs), 0]) >= GVAR(freeRepairCount)
) exitWith
{
    ["Feldreparatur", STR_NEED_TOOLKIT, "red"] call EFUNC(gui,message);
};

GVAR(mutexAction) = true;
private _fireMode = currentWeaponMode player;
player selectWeapon primaryWeapon player;    // psycho, animation only able to play while primary weapon is in use
sleep 1;
private _lastPlayerState = animationState player;

// player playActionNow "medicStartRightSide";
player playMove "Acts_carFixingWheel";
sleep 0.5;
private _maxlength =
(
    _veh getVariable
    [
        QGVAR(easyRepTimeLeft),
        [_veh] call FUNC(getPartsRepairTime)
    ]
) min GVAR(maxFieldRepairTime);

private _vehname = getText ( configFile >> "CfgVehicles" >> typeOf(_veh) >> "displayName");

// was vehicle already repaired?
private _startTime = time;

/*
    * Arguments:
    * 0: Total Time (in game "time" seconds) <NUMBER>
    * 1: Arguments, passed to condition, fail and finish <ARRAY>
    * 2: On Finish: Code called or STRING raised as event. <CODE, STRING>
    * 3: On Failure: Code called or STRING raised as event. <CODE, STRING>
    * 4: (Optional) Localized Title <STRING>
    * 5: Code to check each frame (Optional) <CODE>
    * 6: Exceptions for checking EFUNC(common,canInteractWith) (Optional)<ARRAY>
*/
[
    _maxlength,
    [_veh, _startTime, _maxlength],
    {
        (_this select 0) params ["_veh"];

        player switchMove "";
        ["Feldreparatur", STR_REPAIR_FINISHED, "green"] call EFUNC(gui,message);

        [_veh] remoteExecCall [QFUNC(partRepair), _veh, false]; // called where vehicle is local!

        if !(typeOf player in (GVARMAIN(pioniers) + GVARMAIN(engineers))) then
        {
            _veh setVariable [QGVAR(noRepairs), (_veh getVariable [QGVAR(noRepairs), 0]) + 1 , true];
        };

        _veh setVariable [QGVAR(easyRepTimeLeft), nil, true];
    },
    {
        (_this select 0) params ["_veh", "_startTime", "_maxlength"];

        ["Feldreparatur", STR_REPAIR_INTERRUPTED, "red"] call EFUNC(gui,message);
        // store rep time on vehicle so next repair goes faster
        _veh setVariable [QGVAR(easyRepTimeLeft), _maxlength - (time - _startTime), true];
    },
    format[STR_REPAIR_MSG_STRING, _maxlength, _vehname],
    {
        (_this select 0) params ["_veh"];

        alive player and
        (player distance _veh) < 7 and
        player getVariable ["FAR_isUnconscious", 0] == 0 and
        isNull objectParent player and
        speed _veh < 3
    }
] call ace_common_fnc_progressBar;

GVAR(mutexAction) = false;
private _fireModeIndex = switch (_fireMode) do {
    case "Single":
    {
        0
    };
    case "Burst":
    {
        1
    };
    case "FullAuto":
    {
        2
    };
    default {0};
};
player action ["SwitchWeapon", player, player, _fireModeIndex];

true
