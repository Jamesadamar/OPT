/**
* Author: James
* initialize all EH for player
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_initPlayerEH.sqf;
*
*/
#include "script_component.hpp"

/*-------------------------------
Event Handler für Spieler
Sind auch nach Respawn persistent
---------------------------------*/

// EH für Waffencheck
player addEventHandler ["Take", {_this call EFUNC(common,weaponCheck)}];

// EH für Positionssperre in Fahrzeugen beim Einsteigen
player addEventHandler ["GetInMan", {
    /*  
        unit: Object - Unit the event handler is assigned to
        position: String - Can be either "driver", "gunner" or "cargo"
        vehicle: Object - Vehicle the unit entered
        turret: Array - turret path
    */
    params ["_unit", "_pos", "_vec", "_turret"];

    [_unit, _pos, _vec] call FUNC(checkSeat);
}];

// EH für Positionssperre in Fahrzeugen bei Platztausch
player addEventHandler ["SeatSwitchedMan", {
    /*  
        unit1: Object - Unit switching seat.
        unit2: Object - Unit with which unit1 is switching seat.
        vehicle: Object - Vehicle where switching seats is taking place.
    */
    params ["_unit1", "_unit2", "_vec"];

    private _pos = tolower (assignedVehicleRole _unit1 select 0);

    [_unit1, _pos, _vec] call FUNC(checkSeat);
}];

true;