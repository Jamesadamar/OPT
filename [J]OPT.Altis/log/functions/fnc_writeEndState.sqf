/**
* Author: James
* log mission end state
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_writeEndState.sqf;
*
* Server only:
* yes
*
* Public:
* yes
*/
#include "script_component.hpp"

/* VALIDATION */

/* CODE BODY */
["Mission", "Missionzeit abgelaufen"] call FUNC(write);

[] call FUNC(writePlayerList);

[] call FUNC(writeFPS);

_message = format ["Endbudget: (NATO %1 | CSAT %2)", GVARMAIN(westBudget), GVARMAIN(eastBudget)];
["Budget", _message] call FUNC(write);

_message = format ["Endpunktestand: (NATO %1 | CSAT %2)",  GVARMAIN(westPoints), GVARMAIN(eastPoints)];
["Punkte", _message] call FUNC(write);