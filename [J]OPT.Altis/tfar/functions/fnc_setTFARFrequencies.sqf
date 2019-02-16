/**
* Author: James
* set default frequencies for each side as well as frequencies in vehicles when player gets in
*
* Arguments:
* 0: <OBJECT> vehicle or player
*
* Return Value:
* None
*
* Example:
* [] call fnc_setTFARFrequencies.sqf; // for players
* [vehicle player] call fnc_setTFARFrequencies.sqf; // for vehicles
*
*/
#include "script_component.hpp"

params [
    ["_vec", objNull, [objNull], 1]
];

private _frequenciesSWCSAT = ["41","42","43","60","61","62","50","51"];
private _frequenciesLRCSAT = ["40","50","60","41","42","43","51","61","62"];
private _frequenciesSWNATO = ["71","72","73","74","75","76","77","78"];
private _frequenciesLRNATO = ["41","42","43","44","45","46","47","48","49"];
private _encryptionNATO = "_bluefor";
private _encryptionCSAT = "_opfor";

// frequencies can never be intercepted by inf
(switch (PLAYER_SIDE) do {
    case west: {["_bluefor", _frequenciesSWNATO, _frequenciesLRNATO]};
    case east: {["_opfor", _frequenciesSWCSAT, _frequenciesLRCSAT]};
    default {[]};
}) params ["_encryption", "_frequenciesSW", "_frequenciesLR"];

if !(_vec isEqualTo objNull) then {
    if (_vec call TFAR_fnc_hasVehicleRadio) then {
        private _radioLR = player call TFAR_fnc_VehicleLR;
        private _settingsLR = _radioLR call TFAR_fnc_getLrSettings;
        _settingsLR set [2, _frequenciesLR];
        _settingsLR set [4, _encryption];
        [_radioLR, _settingsLR] call TFAR_fnc_setLrSettings;
        //player sideChat "LongRange Kanäle programmiert.";

        systemChat "Frequenzen für Fahrzeug LR gesetzt!";

    };
    
} else {

    // look for prototype radios in player inventory and wait till replacement
    waitUntil {!isNil {(call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency;}};
    private _hasLR = player call TFAR_fnc_haveLRRadio;
    private _hasSW = player call TFAR_fnc_haveSWRadio;

    // Set frequencies for Sw Rradio
    if (_hasSW) then {
        private _radioSW = player call TFAR_fnc_activeSwRadio;
        private _settingsSW = _radioSW call TFAR_fnc_getSwSettings;
        _settingsSW set [2, _frequenciesSW];
        _settingsSW set [4, _encryption];
        [_radioSW, _settingsSW] call TFAR_fnc_setSwSettings;
        //player sideChat "ShortRange Kanäle programmiert.";
    };

    // Set frequencies for Lr radio
    if (_hasLR) then {
        private _radioLR = player call TFAR_fnc_activeLrRadio;
        private _settingsLR = _radioLR call TFAR_fnc_getLrSettings;
        _settingsLR set [2, _frequenciesLR];
        _settingsLR set [4, _encryption];
        [_radioLR, _settingsLR] call TFAR_fnc_setLrSettings;
        //player sideChat "LongRange Kanäle programmiert.";
    };

    systemChat "Frequenzen für LR und SR gesetzt!";
};

