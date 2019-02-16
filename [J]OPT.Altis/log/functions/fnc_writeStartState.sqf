/**
* Author: James
* log mission start state
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call writeStartState.sqf;
*
* Server only:
* yes
*
* Public:
* no
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */
_log_msg = format["Startbudget: NATO %1 - CSAT %2", GVARMAIN(westBudget), GVARMAIN(eastBudget)];
["Budget", _log_msg] call FUNC(write);

_log_msg = format[
    "Spieleranzahl: NATO %1 - CSAT %2",
    count (allPlayers select {side _x isEqualTo west}),
    count (allPlayers select {side _x isEqualTo east})
];
["Spieler", _log_msg] call FUNC(write);