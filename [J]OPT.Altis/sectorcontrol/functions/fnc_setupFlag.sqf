/**
* Author: James
* initialize all flag poles with optionall marker and add action menu for playersNumber
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_setupFlag.sqf;
*
*/
#include "script_component.hpp"

/* BY JAMES */
// Variablen opt_csat_flags und opt_nato_flags werden durch die HL & PL von NATO und CSAT in der Warmup-Phase am Kartenboard ausgewaehlt
// siehe mission\functions\fnc_chooseFlag für Details

// fallback if no flag was chosen -> random war!
if (count GVARMAIN(westFlags) == 0) then { 
    GVARMAIN(westFlags) = [selectRandom (allMissionObjects "FlagPole_F" select {_x getVariable "owner" == west})];
    publicVariable QGVARMAIN(westFlags);
};

if (count GVARMAIN(eastFlags) == 0) then { 
    GVARMAIN(eastFlags) = [selectRandom (allMissionObjects "FlagPole_F" select {_x getVariable "owner" == east})];
    publicVariable QGVARMAIN(eastFlags);
};

/*
Fuer jede Flagge in einem Sektor: 
Marker für Flag falls Marker an
Marker für Minensperre falls Minensperre an
unverwundbar, Logistik-Script aus sowie Actionmeneintrag fuer Spieler
*/
{
    // erzeuge fr jede gefundene Flagge einen Marker auf der Karte
    if (GVAR(flagMarkerOn)) then {
        private _markerName = format["marker_%1_%2", _x, _forEachIndex];
        private _marker = createMarker [_markerName, getPos _x];

        if (_x in GVARMAIN(eastFlags)) then {
            _marker setMarkerType "flag_CSAT";
        } else {
            _marker setMarkerType "flag_NATO";
        };
        _x setVariable [QGVAR(flagMarker), _marker, true];
    };

    // mark free mine zone around flag
    if (GVAR(flagFreeMineZoneMarkerOn)) then {
        private _markerName = format["marker_%1_%2_free_mine_zone", _x, _forEachIndex];
        private _marker = createMarker [_markerName, getPos _x];
        _marker setMarkerShape "ELLIPSE";
        _marker setMarkerBrush "Border";
        _marker setMarkerColor "ColorRed";
        _marker setMarkerAlpha 0.5;
        _marker setMarkerSize [GVAR(flagFreeMineZoneRadius), GVAR(flagFreeMineZoneRadius)];
    };
    
    [
        _x,
        [
            SECTORCONTROL_ACTION_FLAG call XRedText,     // Anzeigetext
            {[_this select 0, _this select 1] call FUNC(captureFlag);},  // Skript
            [],                                                          // Parameter fr Skript
            999,                                                         // priority
            true,                                                        // showWindow
            true,                                                        // hideOnUse 
            "",                                                          // shortcut
            format["[_target, _this] call %1", QFUNC(captureFlagCondition)],                   // condition
            GVAR(flagDistanceToPlayer)                                   // radius
        ]
    ] remoteExecCall ["addAction", 0, true];
   
    _x allowDamage false;  // Flagge kann nicht beschaedigt werden

} foreach (GVARMAIN(eastFlags) + GVARMAIN(westFlags));
