/**
* Description:
* Verschieb die Minimap auf das Ausgewählte Ziel.
* 
*
* Author:
* [GNC]Lord-MDB
*
* Arguments:
* 0: <NUMBER> current selected index of listbox control
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called from beam dialog
*
* Global:
* no
*
* Sideeffects:
* verschieb die Minimap im Dialog
* 
* 
*
* Example:
* [0] spawn EFUNC(beam,beamMovemap);
*/
#include "script_component.hpp"

/* PARAMS */
params 
[
   ["_ix", -1, [0], 1]
];

/* VALIDATION */
if (_ix == -1) exitWith {};

/* CODE BODY */

private _fcDialog = findDisplay 444001;
private _mapCtrl = _fcDialog displayCtrl 10007;
private _arry = GVAR(box) select _ix;
private _beam_pos = _arry select 0;
private _xPos = _beam_pos select 0;
private _yPos = _beam_pos select 2;
private _mapFocus=[_xPos,_yPos];

_mapCtrl ctrlMapAnimAdd [0,0.1, _mapFocus];
ctrlMapAnimCommit _mapCtrl;
_mapCtrl ctrlCommit 0;	








