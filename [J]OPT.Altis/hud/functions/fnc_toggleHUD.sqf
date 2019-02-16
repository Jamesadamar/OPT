/**
* Author: James
* called via CBA Keybind. Toggle ingame HUD
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_toggleHUD.sqf;
*
*/
#include "script_component.hpp"

// Wenn HUD in main\setup\setup.hpp ein, füge EH für HUD hinzu
// HUD wird dann jedes Frame neu gezeichnet
// belastet nur Client FPS, wenn überhaupt

private _noHUD = (uiNamespace getVariable [QGVAR(display), displayNull]) isEqualTo displayNull;

if (_noHUD) then {
    // create rsc layer and add mission EH for updating HUD
    (QGVAR(layerID) call BIS_fnc_rscLayer) cutRsc [QGVAR(rsc_hud), "PLAIN", 1];

    // Aktualisierung des HUD
    [] spawn FUNC(updateHUD);

} else {

    // delete rsc layer and all mission EH
    (QGVAR(layerID) call BIS_fnc_rscLayer) cutFadeOut 1;
};


true