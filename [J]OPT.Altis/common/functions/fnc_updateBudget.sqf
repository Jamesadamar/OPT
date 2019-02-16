/**
* Description:
* update budget for given side, log budget change and send new budget to all players
*
* Author:
* James
*
* Arguments:
* 0: <STRING> name of buyer or seller
* 1: <SIDE> side of buyer
* 2: <STRING> classname (type) of vehicle or object that was bought or sold
* 3: <NUMBER> cost of transaction
* 4: <STRING> sign of transaction: "+" if cost is added to budget, "-" if cost is subtracted
* 5: <STRING> case - transaction case ["", "respawn", "weapons"]
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
* yes - changes budget of either west or east
*
* Sideeffects:
*QGVARMAIN(westBudget) or GVARMAIN(eastBudget) is updated
* buy or sell process is logged 
*
* Example:
* [name player, west, typeOf vehicle, 1000, "-", ""]  call EFUNC(common,updateBudget);
*/
#include "script_component.hpp"

/* PARAMS */
params 
[
    ["_buyerName", "", [""], 1], 
    ["_side", sideUnknown, [sideUnknown], 1],
    ["_unitType", "", [""], 1],
    ["_unitCost", 0, [0], 1],
    ["_sign", "", [""], 1],
    ["_case", "", ["s"], 1]
];

/* VALIDATION */
private _cond = 
(
    _buyerName isEqualTo "" or 
    _side isEqualTo sideUnknown or 
    _unitType isEqualTo "" or 
    _sign isEqualTo ""
);
if (_cond) exitWith{};

/* CODE BODY */
private _cat = "Budget";
private _message = "";
private _budget_neu = 0;

// calc new budget depending on variable _sign
// server log sowie Aktualisierung via publicVarialbe
private _unitName = (getText(configFile >> 'CfgVehicles' >> _unitType >> 'displayName'));
if (_side == west) then 
{
    _budget_neu = call compile format["%1 %2 %3", GVARMAIN(westBudget), _sign, _unitCost];
    _message = format
    [
        "NATO alt: %1 - neu: %2 - Differenz: %3%4.", 
        GVARMAIN(westBudget), 
        _budget_neu, 
        _sign,
        _unitCost
    ];

    GVARMAIN(westBudget) = _budget_neu;
    publicVariable QGVARMAIN(westBudget);

}
else 
{
    _budget_neu = call compile format["%1 %2 %3", GVARMAIN(eastBudget), _sign, _unitCost];
    _message = format
    [
        "CSAT alt: %1 - neu: %2 - Differenz: %3%4.", 
        GVARMAIN(eastBudget), 
        _budget_neu, 
        _sign, 
        _unitCost    
    ];
    
    GVARMAIN(eastBudget) = _budget_neu;
    publicVariable QGVARMAIN(eastBudget);

};

switch (_case) do 
{
    case "respawn": 
    {
        _message = format["%1 Respawn von %2", _message, _buyerName];
    };
    case "weapons": 
    {
        _message = format["%1 Fahrzeug %2 wurde auf/abgerüstet.", _message, _unitName];
    };
    default 
    {
        _message = format["%1 %2 (ver)kaufte %3", _message, _buyerName, _unitName];
    };
};

[_cat, _message] remoteExecCall [QEFUNC(log,write), 2, false];
