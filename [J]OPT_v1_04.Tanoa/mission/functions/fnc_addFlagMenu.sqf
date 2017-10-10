/**
* Author: James
* fügt allen Offizieren (HL und PL) einen addAction Eintrag für die Flaggenwahl
* zu Missionsbeginn hinzu. Ruft das Skript chooseFlag auf. Wird ausgeblendet,
* sobald die Mission begonnen hat.     
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_addFlagMenu.sqf;
*
*/
#include "script_component.hpp"
// Mausradmenüeinträge für HL und PL
if (typeOf player in opt_officer) then {
    player addAction [
        "<t size=""1.5"" color=""#ffffff"">Angrifsflagge wählen</t>", 
        {[] spawn FUNC(chooseFlag);}, 
        [], 
        6, 
        true, 
        true, 
        "", 
        "!missionStarted"
        ];
};