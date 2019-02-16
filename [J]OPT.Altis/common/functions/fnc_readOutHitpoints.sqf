/**
* Description:
* read out all hitpoints of all vehicles from CfgVehicles
*
* Author:
* James
*
* Arguments:
* None
*
* Return Value:
* <ARRAY> list of unique hitpoints
*
* Server only:
* no
*
* Public:
* yes
*
* Global:
* no
*
* Sideeffects:
* no
*
* Example:
* [] call EFUNC(common,readOutHitpoints);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
private _hitPoints = [];

private _cfgs = "isClass (_x >> ""HitPoints"")" configClasses (configFile >> "CfgVehicles");

for "_i" from 0 to (count _cfgs -1) do
{
	private _hps = (_cfgs select _i) >> "HitPoints";

	for "_j" from 0 to (count _hps - 1) do
	{
		_hitPoints pushBackUnique (configName (_hps select _j));
	};
};

_hitPoints