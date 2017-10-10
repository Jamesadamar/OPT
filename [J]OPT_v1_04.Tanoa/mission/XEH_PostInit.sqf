#include "script_component.hpp"

[] call FUNC(briefing); // fügt Briefing und Tagebuch hinzu

[QGVAR(initEH), "onPreloadFinished",  {
    /*  	
        Executes assigned code after the mission preload screen. Stackable version of onPreloadFinished. 
    */
    if (local player) then {
        [] call FUNC(postInit); // führt alle wichtigen Skripte und EH zu Begin aus
        [] call FUNC(addFlagMenu); // fügt HL und PL Menü für Flaggenwahl hinzu
    };

    [] spawn FUNC(startMission); // Waffenruhe und Missionsstart, für Server und Client

}, []] call BIS_fnc_addStackedEventHandler; 