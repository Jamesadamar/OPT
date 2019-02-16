/**
* Author: James
* load opt_warehouse_dlg_order and prefill controls
*
* Arguments:
* 0: <STRING> category to load
*
* Return Value:
* None
*
* Example:
* ['vehicles'] call fnc_vehicleOrder.sqf;
*
*/
#include "script_component.hpp"

#define IDD_DLG_ORDER 20000
#define IDC_PLAYER_FLAG 20002
#define IDC_CTRL_VEHICLE_LIST 20100
#define IDC_CTRL_PRICE_LIST 20101

private _side = PLAYER_SIDE;

params
[
    ["_type", "", ["s"], 1]
];
GVAR(vehicleType) = _type;

private _pool = switch (GVAR(vehicleType)) do
{
    case "vehicles" :
    {
        if (_side == west) then
        {
            GVAR(nato_vehicles) + GVAR(nato_vehicles_supply)
        }
        else
        {
            GVAR(csat_vehicles) + GVAR(csat_vehicles_supply)
        };

    };
    case "choppers" :
    {
        if (_side == west) then
        {
            GVAR(nato_choppers)
        }
        else
        {
            GVAR(csat_choppers)
        };

    };
    case "armored" :
    {
        if (_side == west) then
        {
            GVAR(nato_armored)
        }
        else
        {
            GVAR(csat_armored)
        };

    };
    case "supplies" :
    {
        if (_side == west) then
        {
            GVAR(nato_supplies) + GVAR(nato_static)
        }
        else
        {
            GVAR(csat_supplies) + GVAR(csat_static)
        };

    };
    case "sea" :
    {
        if (_side == west) then
        {
            GVAR(nato_sea)
        }
        else
        {
            GVAR(csat_sea)
        };

    };
    default {[]};
};

// show only objects with a price greater than 0 € and valid cofig class
_pool = _pool select
{
    _x select 1 > 0 and
    isClass (configFile >> "CfgVehicles" >> (_x select 0))
};

GVAR(orderDialogObjects) = [_pool, 1] call CBA_fnc_sortNestedArray; // billigste zuerst

// player sideChat format ["%1", GVAR(orderDialogObjects)];
createDialog QGVAR(dlg_order);
disableSerialization;

private _display = findDisplay IDD_DLG_ORDER;
private _listbox_vehicles = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
private _budget = _display displayCtrl 20102;
private _order = _display displayCtrl 20002;
private _close = _display displayCtrl 20003;
private _sell = _display displayCtrl 20004;
private _rscPicture = _display displayCtrl IDC_PLAYER_FLAG;

if !(GVAR(allowSale)) then
{
    _sell ctrlEnable false;
};

[_budget] call EFUNC(common,renderBudget);

private _txtToAdd = GVAR(orderDialogObjects) apply
{
    [configFile >> "CfgVehicles" >> (_x select 0) >> "displayName", ""] call BIS_fnc_returnConfigEntry;
};

private _picToAdd = GVAR(orderDialogObjects) apply
{

    private _val = [configFile >> "cfgVehicles" >> (_x select 0) >> "picture", ""] call BIS_fnc_returnConfigEntry;
    if (_val find ".paa" != -1) then
    {
        _val;
    }
    else
    {
        [configFile >> "cfgVehicles" >> (_x select 0) >> "editorPreview", ""] call BIS_fnc_returnConfigEntry;
    };
};
private _dataToAdd = GVAR(orderDialogObjects) apply {_x select 0};

[IDD_DLG_ORDER, IDC_CTRL_VEHICLE_LIST, _txtToAdd, _picToAdd, _dataToAdd] call EFUNC(common,fillLB);

// set flag paa
switch (_side) do
{
    case west:
    {
        _rscPicture ctrlSetText "\A3\Data_F\Flags\Flag_NATO_CO.paa";
    };
    case east:
    {
        _rscPicture ctrlSetText "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
    };
};

// deaktiviere Verkaufenbutton für alle Dialoge außer "sell"
if (count GVAR(orderDialogObjects) != 0) then
{
    _sell ctrlShow false;

}
else
{
    _order ctrlEnable false;

    // im Falle des Verkaufsbuttons -> Liste aller gefundenen Fahrzeuge
    // alle Objekte im Radius von GVAR(saleRadius) Metern um das Pad -> im Idealfall nur das zu verkaufende Fahrzeug
    _spawnpos = nearestObject [player, "Land_HelipadCircle_F"];
    _objs = nearestObjects [_spawnpos, ["AllVehicles", "Thing"], GVAR(saleRadius)];

    // gehe alle gefundenen Objekte durch und lösche sie, falls nicht in pool, oder ergänze um Verkaufspreis
    {

    _index = ((GVAR(all) apply {toLower (_x select 0)}) find (toLower (typeOf _x)));

        if (_index == -1) then
        {
            _objs = _objs - [_x];
        }
        else
        {
            _pool pushBack
            [
                _x,
                (GVAR(all) select _index) select 2,
                (GVAR(all) select _index) select 3
            ]; // füge Fahrzeug und Verkaufspreis hinzu
        };

    } foreach _objs;

    // show only objects with a price greater than 0 €
    _pool = _pool select {_x select 2 > 0};
    GVAR(vehiclesToSell) = [_pool, 1, false] call CBA_fnc_sortNestedArray; // teuerste zuerst
    {
        _class = typeOf (_x select 0);
        _displayName = [configFile >> "CfgVehicles" >> _class >> "displayName", ""] call BIS_fnc_returnConfigEntry;
        _listbox_vehicles lbAdd format ["%1", _displayName]; // Name
        _listbox_vehicles lbSetData [_forEachIndex, _class];
        // Verkaufspreis berechnen -> GVAR(saleReturnValue) % vom Vollpreis
        _picture = "";

        private _val = [configFile >> "cfgVehicles" >> _class >> "picture", ""] call BIS_fnc_returnConfigEntry;
        if (_val find ".paa" != -1) then
        {
            _picture = _val;
        }
        else
        {
            _picture = [configFile >> "cfgVehicles" >> _class >> "editorPreview", ""] call BIS_fnc_returnConfigEntry;
        };
        _listbox_vehicles lbSetPicture [_forEachIndex, _picture];
    } foreach GVAR(vehiclesToSell);

    // orderDialogObjects is needed by filterVehicle and deleteVehicle script
    GVAR(orderDialogObjects) = GVAR(vehiclesToSell);

};
