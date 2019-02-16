/**
* Author: James
* process buy request from client and spawn vehicle
*
* Arguments:
* None (works via global variables)
*
* Return Value:
* None
*
* Example:
* [] call fnc_sendVehicleOrder.sqf;
*
*/
#include "script_component.hpp"

#define IDD_DLG_ORDER 20000
#define IDC_CTRL_VEHICLE_LIST 20100
disableSerialization;

private _display = findDisplay IDD_DLG_ORDER;
private _list = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
private _selectedVehicle = lbCurSel _list;

if (_selectedVehicle < 0) exitWith {	
    private _txt = "Bitte ein Fahrzeug auswählen";
    ["Fehler", _txt, "yellow"] call EFUNC(gui,message);
};

/*
[] call FUNC(filterVehicleList); // check that filteredPool is up to date
*/
private _unitRecord = GVAR(orderDialogObjects) select _selectedVehicle;
private _selectionText = lbtext [IDC_CTRL_VEHICLE_LIST, _selectedVehicle];
if (_selectionText == "") exitWith {};

private _unitType = _unitRecord select 0;
private _unitCost = _unitRecord select 1;

private _side_Budget = [GVARMAIN(westBudget), GVARMAIN(eastBudget)] select (PLAYER_SIDE isEqualTo west);

// Prüfe, ob aktuelle Kosten größer sind als aktuelles Budget + Dispo
// wenn Budget < 0, dann kann noch bis dispo eingekauft werden (siehe setup_publicvariable)
if (_unitCost > (_side_Budget + GVARMAIN(dispo))) exitWith {
    private _txt = "Budget reicht nicht aus, Dispo überzogen!";
    ["Budget unzureichend", _txt, "red"] call EFUNC(gui,message);
};

private _spawnObj = nearestObject [player, "Land_HelipadCircle_F"];

[player, _unitType, _spawnObj, _unitCost] remoteExec [QFUNC(spawnVehicle), 2, false]; // sheduled environment
//systemChat format ["VT:%1 SO:%2 OSR:%3",_unitType, _spawnObj,(position _spawnObj)];