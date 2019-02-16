/**
* Description:
* check if vehicle has damaged tracks or wheels (above allowed damage in settings)
* 
* Author: 
* James
*
* Arguments:
* 0: <OBJECT> vehicle
*
* Return Value:
* <BOOLEAN> true - vehicle is damaged beyond threshold, false - otherwise
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

* Example:
* [vehicle player] call EFUNC(berggang,hasDamagedTrackOrWheel);
*
*/
#include "script_component.hpp"

/* PARAMS */
params 
[
	["_vehicle", objNull, [objNull], 1]
];

/* VALIDATION */
private _return = false;
if (_vehicle isEqualTo objNull) exitWith{_return};

/* CODE BODY */
private _allHitpoints = getAllHitPointsDamage _vehicle;
private _N = count (_allHitpoints select 0) - 1;
// filter only hitpoints with damage
// if track or wheel, exit with true
for "_i" from 0 to _N do {
	private _hitPoint = tolower (_allHitpoints select 0 select _i);
	private _dmg = _allHitpoints select 2 select _i;

	if 
	(
		(
			_hitPoint find "track" != -1 or 
			_hitPoint find "wheel" != -1
		) and
		_dmg > GVAR(maxDamageToTracksOrWheels)
	) exitWith{_return = true};
	
};

_return
