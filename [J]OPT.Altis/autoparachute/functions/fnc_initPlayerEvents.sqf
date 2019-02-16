/**
* Description:
* initialize player EH
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
* no
*
* Public:
* no - should be called only once at mission start from XEH_PostInit.sqf
*
* Global:
* no
*
* Sideeffects:
* add GetOut mission EH to each client for auto parachute functionality
*
* Example:
* [] call EFUNC(autoparachute,initPlayerEvents);
*
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
GVAR(EH_GetOutMan) = player addEventHandler ["GetOutMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];

	[_unit, _vehicle] call FUNC(parachuteController);
}];