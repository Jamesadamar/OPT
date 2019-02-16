/**
* Description:
* reformat budget text and write it in the control field
*
* Author:
* James
*
* Arguments:
* 0: <IDC> idc of control field
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
* overwrite content of contril field (param 0)
*
* Example:
* [IDC] call EFUNC(common,renderBudget);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
   ["_budget_field", controlNull, [controlNull], 1]
];

/* VALIDATION */
if (_budget_field isEqualTo controlNull) exitWith{};

/* CODE BODY */
private _side = PLAYER_SIDE;
private _sideBudget = [GVARMAIN(westBudget), GVARMAIN(eastBudget)] select (_side isEqualTo east);

private _txt = if (_sideBudget > 1e6-1) then 
{
    format ["Budget: %1 Mio. €", str(_sideBudget / BUDGET_REDUCE_WHEN_BIGGER)];    // psycho: budget muss numerisch reduziert werden um Darstellung aufrecht zu erhalten
} 
else 
{
    format ["Budget: %1 €", str(_sideBudget)];
};

// Warnung, wenn Budget niedrig wird
if (_sideBudget < BUDGET_WARN_WHEN_LOWER) then 
{
    _budget_field ctrlSetTextColor [0.97, 0.63, 0.02, 1];
};

// Falls Budget negativ: Zeige Dispo
if (_sideBudget < 0) then 
{
    _txt = format["Dispo: %1 €", str(_sideBudget)];
    _budget_field ctrlSetTextColor [1,0,0,1];
};

_budget_field ctrlSetText _txt;