/**
* Description:
* initialize scripts and commands before world has initialized
*
* Author:
* James
*
* Arguments:
* None
*
* Return Value:
* None
*
* Server only:
* no
*
* Public:
* no - should be called only once by XEH_PostInit.sqf
*
* Global:
* no
*
* Sideeffects:
* register CBA keybind to open the waffenwechsel dialog
*
* Example:
* [] call EFUNC(waffenwechsel,postInit);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
if (hasInterface) then 
{

    /*
    * https://cbateam.github.io/CBA_A3/docs/files/keybinding/fnc_addKeybind-sqf.html
    */
    [
        "OPT", 
        QGVAR(cba_open_waffenwechsel_dialog), 
        ["Waffenwechsel-Dialog öffnen", "Öffnet den Waffenwechsel-Dialog im Fahnenbereich."], 
        {
            private _triggerUnits = 
			(list csat_trigger_Waffenwechsel_sw_1)
			+ (list csat_trigger_Waffenwechsel_sw_2) 
			+ (list csat_trigger_Waffenwechsel_sw_3) 
			+ (list csat_trigger_Waffenwechsel_nw_1)
			+ (list csat_trigger_Waffenwechsel_nw_2)
			+ (list csat_trigger_Waffenwechsel_nw_3)
			+ (list csat_trigger_Waffenwechsel_so_1)
			+ (list csat_trigger_Waffenwechsel_so_2)
			+ (list csat_trigger_Waffenwechsel_so_3)
			+ (list csat_trigger_Waffenwechsel_no_1)
			+ (list csat_trigger_Waffenwechsel_no_2)
			+ (list csat_trigger_Waffenwechsel_no_3)
			+ (list nato_trigger_Waffenwechsel1) 
			+ (list nato_trigger_Waffenwechsel2) 
			+ (list nato_trigger_Waffenwechsel3);
            if (player isEqualTo assignedDriver vehicle player and (vehicle player in _triggerUnits)) then {
                [] call FUNC(openDialog);
            };
            
        }, 
        {}, 
        [
            DIK_F3, 
            [false, false, false] // [shift, ctrl, alt]
        ]
    ] call CBA_fnc_addKeybind;

};