/**
* Author: James
* initialize flag dialog with coordinates of CSAT and NATO flag positions
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_initFlagDialog.sqf;
*
*/
#include "script_component.hpp"

#define NATO_X_IDC 1400
#define NATO_Y_IDC 1401
#define CSAT_X_IDC 1402
#define CSAT_Y_IDC 1403

params [["_dialog", displayNull, [displayNull], 1]];

disableSerialization;

if (_dialog isEqualTo displayNull) exitWith {};
uiNamespace setVariable [QGVAR(flagDialog), _dialog];

private _edit_nato_x = _dialog displayCtrl NATO_X_IDC;
private _edit_nato_y = _dialog displayCtrl NATO_Y_IDC;
private _edit_csat_x = _dialog displayCtrl CSAT_X_IDC;
private _edit_csat_y = _dialog displayCtrl CSAT_Y_IDC;

// read in coordinates
if (count GVARMAIN(westFlags) == 0) then {
    _edit_nato_x ctrlSetText format["%1", 0];
    _edit_nato_y ctrlSetText format["%1", 0];
} else {
    private _nato_flag = GVARMAIN(westFlags) select 0;
    // set coordinates
    _edit_nato_x ctrlSetText format["%1", getPos _nato_flag select 0];
    _edit_nato_y ctrlSetText format["%1", getPos _nato_flag select 1];
};

if (count GVARMAIN(eastFlags) == 0) then {
    _edit_csat_x ctrlSetText format["%1", 0];
    _edit_csat_y ctrlSetText format["%1", 0];
} else {
    private _csat_flag = GVARMAIN(eastFlags) select 0;
    _edit_csat_x ctrlSetText format["%1", getPos _csat_flag select 0];
    _edit_csat_y ctrlSetText format["%1", getPos _csat_flag select 1];
};
