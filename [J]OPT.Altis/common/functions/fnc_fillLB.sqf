/**
* Description:
* fill a listbox of a dialog with given keys
*
* Author:
* James
*
* Arguments:
* 0: <IDD> idd of dialog listbox belongs to
* 1: <IDC> idc of listbox
* 2: <ARRAY> list of strings as display text to fill listbox with
* 3: <ARRAY> (optional) list of paths to pictures to fill picture attribute
* 4: <ARRAY> (optional) list of arbitrary data to fill data attribute
*
* Return Value:
* <BOOLEAN> true - if lb was filled correctly, false - otherwise
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
* fill listbox (param 1) of dialog (param 0) with given data (param 2-4)
*
* Example:
* [1000, 2000, ["a","b"],["a.paa","b.paa"], [1,2]] call EFUNC(common,fillLB);
*/
#include "script_component.hpp"

/* PARAMS */
params
[
    ["_idd", 0, [1], 1],
    ["_idc", 0, [1], 1],
    ["_txtToAdd", [], [["s"]]],
    ["_picToAdd", [], [["s"]]],
    ["_dataToAdd", [], [["s"]]]
];

/* VALIDATION */
if (_idd == 0 or _idc == 0) exitWith {false};
if (count _txtToAdd == 0) exitWith {false};
if ((count _picToAdd != count _txtToAdd) or (count _dataToAdd != count _txtToAdd)) exitWith {false};

/* CODE BODY */
private _display = findDisplay _idd;
private _lb = _display displayCtrl _idc;

for "_i" from 0 to (count _txtToAdd - 1) do
{
    _lb lbAdd (_txtToAdd select _i);

    if (count _dataToAdd > 0) then
    {
        _lb lbSetData [_i, (_dataToAdd select _i)];
    };

    if (count _picToAdd > 0) then
    {
        _lb lbSetPicture [_i, (_picToAdd select _i)];
    };

};

true
