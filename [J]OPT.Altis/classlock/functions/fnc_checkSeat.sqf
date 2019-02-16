/**
* Description:
* check for a given unit if pos in vehicle is allowed according to unit class
* 
* Author: 
* James
*
* Arguments:
* 0: <OBJECT> unit
* 1: <STRING> pos, either "driver", "gunner", "commander" or "cargo"
* 2: <OBJECT> vehicle 
*
* Return Value:
* None
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
* unit is moved out of vehicle
* message is shown to unit

* Example:
* [player, "driver", vehicle player] call EFUNC(classlock,checkSeat);
* 
*/
#include "script_component.hpp"

/* PARAMS */
params 
[
	["_unit", objNull, [objNull], 1],
	["_pos", "", [""], 1],
	["_vec", objNull, [objNull], 1]
];

/* VALIDATION */
if 
(
	_unit isEqualTo objNull or 
	_pos isEqualTo "" or 
	_vec isEqualTo objNull or 
	!(vehicle _unit isEqualTo _vehicle)
) exitWith{false};

/* CODE BODY */
private _unitClass = typeOf _unit;
private _vecType = typeOf _vec;

if (_vec isKindOf "Air") then 
{
	if 
	(
		GVAR(blockDriverAir) and
		!(_unitClass in GVARMAIN(pilots)) and
		_pos isEqualTo "driver" and
		!(_vecType in ["Steerable_Parachute_F", "NonSteerable_Parachute_F"])
	) then 
	{        
		_unit action ["GetOut", _vec];
		_txt = "Dieser Platz ist reserviert für Piloten!";
		["Klassensperre", _txt, "red"] call EFUNC(gui,message);     
	};
};

if (_vec isKindOf "Tank" or _vecType in GVARMAIN(crew_vecs)) then {
	if 
	(
		GVAR(blockDriverHeavyVehicle) and 
		!(_unitClass in GVARMAIN(crew)) and
		_pos isEqualTo "driver"
	) then 
	{
		_unit action ["GetOut", _vec];
		_txt = "Dieser Platz ist reserviert für Besatzungsmitglieder!";
		["Klassensperre", _txt, "red"] call EFUNC(gui,message);
	};
};

if (_pos in ["gunner", "turret"]) then {
	if 
	(
		GVAR(blockGunner) and 
		!(_unitClass in GVARMAIN(gunner))
	) then 
	{
		_unit action ["GetOut", _vec];
		_txt = "Dieser Platz ist reserviert für Gunner!";
		["Klassensperre", _txt, "red"] call EFUNC(gui,message);
	};
};