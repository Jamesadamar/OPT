/**
* Description:
* accelerate a vehicle (boost) that is below a certain speed
* 
* Author: 
* James
*
* Arguments:
* 0: <OBJECT> vehicle
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only via hotkey or add action menu entry
*
* Global:
* yes - all commands have global effect, so vehicle is accelerated on all clients
*
* Sideeffects:
* no
* 
* Example:
* [] spawn EFUNC(berggang,speedUp);
*
*/
#include "script_component.hpp"

/* PARAMS */
params 
[
	["_vehicle", objNull, [objNull], 1]
];

/* VALIDATION */
if (_vehicle isEqualTo objNull) exitWith{};

/* CODE BODY */
private _intensity = 0;

sleep 0.5;

while 
{
	alive _vehicle and
	!((driver _vehicle) isEqualTo objNull) and
	isEngineOn _vehicle and
	!([_vehicle] call FUNC(hasDamagedTrackOrWheel)) and
	(vectorDir _vehicle) select 2 > GVAR(minGradient) and
	(speed _vehicle) < (GVAR(maxSpeed) + 2) and
	(speed _vehicle) > 0
} do 
{
	if (_intensity < GVAR(maxIntensity)) then 
	{
		_intensity = _intensity + 0.1 * 15 * GVAR(updateInterval);
	};

	if ((speed _vehicle) < GVAR(maxSpeed)) then 
	{
		_vehicle setVelocity (
			(velocity _vehicle) vectorAdd
			[
				(
					(vectordir _vehicle select 0) * 
					(GVAR(boost) * _intensity * 0.5 * 15 * GVAR(updateInterval))
				),
				(
					(vectordir _vehicle select 1) * 
					(GVAR(boost) * _intensity * 0.5 * 15 * GVAR(updateInterval))
				),
				(
					(vectordir _vehicle select 2) * 
					(GVAR(boost) * _intensity * 0.5 * 10 * GVAR(updateInterval))
				)
			]
		);
	};
	
	sleep GVAR(updateInterval);
};
