/**
* Author: James
* add addAction entries to vehicle that activated the triggerActivated
* repair and rearm vehicle. If vehicle is leaving the trigger zone
* actions are removed.
*
* Arguments:
* 0: <BOOL> true: add action menu entries, false: remove
*
* Return Value:
* None
*
* Example:
* [thistrigger, true] call fnc_repairSystem.sqf;
*
*/
#include "script_component.hpp"

// arguments
params [
    ["_state", false, [true], 1] // Bereich aktiv oder inaktiv
]; 

// Skriptteil für aktiven Bereich
// Aktioneinträge zuweisen
if (_state) then {

    private _vec = vehicle player;

    // binde Fahrzeug an Spieler
    player setVariable [QGVAR(repairSystem_vec), _vec];

    ["Reparatursystem", REPAIR_SYSTEM_USER_INSTRUCTION, "blue"] call EFUNC(gui,message);
    
    // Aktionseinträge müssen dem Fahrzeug gegeben werden, da im Fahrzeug nicht mehr nutzbar
    // nur für den auslösenden Spieler sichtbar, da addAction immer LOCAL!
    private _action1 = _vec addAction [REPAIR_SYSTEM_ACTION_REFUEL, {

        params ["_vec"];

        // als erstes Fahrzeug anhalten
        _vec setFuel 0;

        [
            10,
            [_vec],
            {
                (_this select 0) params ["_vec"];
                _vec setFuel 1;
                ["Reparatursystem", REPAIR_SYSTEM_ACTION_REFUEL_DONE, "green"] call EFUNC(gui,message); 

                // update budget initialized by server!
                [PLAYER_NAME, PLAYER_SIDE, typeOf _vec, GVARMAIN(refuelCost), "-"] call EFUNC(common,updateBudget);
                           
            },
            {
                ["Reparatursystem", REPAIR_SYSTEM_ACTION_REFUEL_ABORT, "red"] call EFUNC(gui,message);
            },
            REPAIR_SYSTEM_ACTION_REFUEL_ONGOING,
            {true},
            ["isnotinside"]
        ] call ace_common_fnc_progressBar;

    }, [], 100, false, true, '', "not (isEngineOn _target) and (fuel _target) < 1"];

    private _action2 = _vec addAction [REPAIR_SYSTEM_ACTION_REPAIR, {
        
        params ["_vec"];

        // als erstes Fahrzeug anhalten
        private _fuel = fuel _vec;

        _vec setFuel 0;
        
        [
            (["fieldrepair", "getPartsRepairTime", [_vec], false, 10] call EFUNC(common,execFunc)) min 10,
            [_vec, _fuel],
            {
                (_this select 0) params ["_vec", "_fuel"];
                _vec setFuel _fuel;
                _vec setDamage 0;
                ["Reparatursystem", REPAIR_SYSTEM_ACTION_REPAIR_DONE, "green"] call EFUNC(gui,message); 

                // update budget initialized by server!
                [PLAYER_NAME, PLAYER_SIDE, typeOf _vec, GVARMAIN(repairCost), "-"] call EFUNC(common,updateBudget);
            },
            {
                ["Reparatursystem", REPAIR_SYSTEM_ACTION_REPAIR_ABORT, "red"] call EFUNC(gui,message);
            },
            REPAIR_SYSTEM_ACTION_REPAIR_ONGOING,
            {true},
            ["isnotinside"]
        ] call ace_common_fnc_progressBar;

    }, [], 100, false, true, '', "not (isEngineOn _target) and ({_x > 0} count (getAllHitPointsDamage _target select 2)) > 0"];

    _vec setVariable [QGVAR(repairSystem_actions), [_action1, _action2]];

} // Skriptteil für deaktivierten Bereich
else {

    _vec = player getVariable [QGVAR(repairSystem_vec), objNull];
    // entferne vorherige Aktioneinträge
    {
        _vec removeAction _x;
    } foreach (_vec getVariable [QGVAR(repairSystem_actions), []]);

    player setVariable [QGVAR(repairSystem_vec), objNull];
    
};




