/**
* Author: James
* stabilize player
*
* Arguments:
* 0: <OBJECT> target that wants to be stabilized
* 1: <OBJECT> unit that called the action
*
* Return Value:
* None
*
* Example:
* [cursorObject, player] call fnc_handleRevive.sqf;
*
*/
#include "script_component.hpp"

params ["_patient", "_healer"];


if (_healer getVariable ["FAR_isUnconscious",0] == 1) exitWith {};

_patient setVariable ["FAR_healer", _healer, true];

_healer selectWeapon primaryWeapon _healer;
sleep 1;
_healer playAction "medicStart";

private _offset = [0,0,0];
_dir = 0;
private _relpos = _healer worldToModel position _patient;

if((_relpos select 0) < 0) then {
    _offset=[-0.2,0.7,0];
    _dir=90;

} else {
    _offset=[0.2,0.7,0];
    _dir=270;

};
_patient attachTo [_healer,_offset];
_patient setDir _dir;

sleep 1;
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
    FAR_REVIVE_STABILIZE_TIME,
    [_healer, _patient],
    {
        (_this select 0) params ["_healer", "_patient"];

        _patient setVariable ["FAR_isStabilized", 1, true];
        _patient setVariable ["FAR_isDragged", 0, true];

        private _name1 = UNIT_NAME(_patient);
        private _name2 = UNIT_NAME(_healer);

        private _message = format [
            "%1 (%2) wurde von %3 (%4) stabilisiert.",
            _name1,
            UNIT_SIDE(_patient),
            _name2,
            UNIT_SIDE(_healer)
        ];

        // übergib Kategorie und Nachricht an log-FUnktion
        ["Revive", _message] remoteExecCall [QEFUNC(log,write), 2, false];

    },
    {
        (_this select 0) params ["_healer", "_patient"];

        if (!alive _patient) exitWith {
            ["San-System", FAR_REVIVE_ACTION_REVIVE_PATIENT_DIED, "yellow"] call EFUNC(gui,message);
        };
        if (!alive _healer) exitWith {
            _patient setVariable ["FAR_healer", objNull, true]
        };

        ["San-System", FAR_REVIVE_ACTION_REVIVE_CANCLED, "red"] call EFUNC(gui,message);

    },
    format[FAR_REVIVE_ACTION_STABILIZE_BAR_TEXT, FAR_REVIVE_STABILIZE_TIME],
    {
        (_this select 0) params ["_healer", "_patient"];

        // solange Zeit nicht abgelaufen,
        // beide am Leben,
        // Abstand zu Patient kleiner 2m,
        // Heiler nicht bewusstlos und
        // -> aktualisiere Fortschrittsbalken
        alive _healer and
        alive _patient and
        (_healer distance _patient) < 2 and
        _healer getVariable "FAR_isUnconscious" == 0

    }
] call ace_common_fnc_progressBar;

_patient setVariable ["FAR_healer", objNull, true]; // bugfix: reset FAR_healer in every case!

detach _healer;
detach _patient;

_healer playAction "medicStop";

true