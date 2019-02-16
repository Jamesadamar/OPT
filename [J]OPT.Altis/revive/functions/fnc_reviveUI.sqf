/**
* Author: James
* kill camera + overlay ui
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_reviveUI.sqf;
*
*/
#include "script_component.hpp"

private _labelwidth = -1;
private _labelpos = [];
private _tick = 0;

#define BAR_CONTROL ((findDisplay 5566) displayCtrl 6699)
#define BAR_CONTROL_POS (ctrlPosition ((findDisplay 5566) displayCtrl 6699))
#define RESPAWN_BTN ((findDisplay 5566) displayCtrl 5566)
#define NEAR_MEDIC_BTN ((findDisplay 5566) displayCtrl 5568)

private _dialog = createDialog "GREUH_respawn";
waitUntil {dialog};

while {dialog && alive player} do {
    if (!isNil "FAR_bleedoutMessage" && !isNil "FAR_bleedoutTimer") then {

        // update button text
        private _cost = [] call EFUNC(common,respawnCost);
        RESPAWN_BTN ctrlSetText FAR_REVIVE_RESPAWN_BUTTON(_cost);

        if (_labelwidth == -1) then {
            _labelwidth = BAR_CONTROL_POS select 2;
        };

        _labelpos = [BAR_CONTROL_POS select 0, BAR_CONTROL_POS select 1, _labelwidth * (FAR_bleedoutTimer / FAR_REVIVE_BLEEDOUT), BAR_CONTROL_POS select 3];
        BAR_CONTROL ctrlSetPosition _labelpos;
        ctrlSetText [5567, FAR_bleedoutMessage];
        ctrlSetText [5568, FAR_nearMedicMessage];

        if (FAR_bleedoutTimer <= 30) then {
            ((findDisplay 5566) displayCtrl 5567) ctrlSetTextColor [1, 0, 0, 1];
            if (FAR_bleedoutTimer % 2 == 0) then {
                ((findDisplay 5566) displayCtrl 6698) ctrlSetTextColor [1, 0, 0, 1];
            } else {
                ((findDisplay 5566) displayCtrl 6698) ctrlSetTextColor [1, 1, 1, 1];
            }
        } else {
            ((findDisplay 5566) displayCtrl 5567) ctrlSetTextColor [1, 1, 1, 1];
        };

        BAR_CONTROL ctrlCommit 0.5;
        ((findDisplay 5566) displayCtrl 6698) ctrlCommit 0.5;
    };

    if (_tick % 10 == 0) then {
        [10000] call BIS_fnc_bloodEffect;
    };

    _tick = _tick + 1;
    sleep 0.25;
};