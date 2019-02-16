/**
* Description:
* define variable for hard repair parts
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
* no - should be called only once at mission start via XEH_PreInit.sqf
*
* Global:
* no
*
* Sideeffects:
* no
*
* Example:
* [] call EFUNC(fieldrepair,preInit);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
GVAR(hardRepairParts) =
[
	"HitAmmo",
	"HitAvionics",
	"HitEngine",
	"HitFuel",
	"HitFuel2",
	"HitFuelL",
	"HitFuelR",
	"HitFuelTank",
	"HitGear",
	"HitGun",
	"HitHRotor",
	"HitHull",
	"HitHydraulics",
	"HitLAileron",
	"HitLCElevator",
	"HitLCRudder",
	"HitLTrack",
	"HitMissiles",
	"HitOptic",
	"HitRAileron",
	"HitRElevator",
	"HitRotor",
	"HitRotorVirtual",
	"HitRRudder",
	"HitRTrack",
	"HitTail",
	"HitTurret",
	"HitVRotor"
];