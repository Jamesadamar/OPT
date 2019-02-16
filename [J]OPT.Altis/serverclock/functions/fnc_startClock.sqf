/**
* Description:
* start global mission glock
* manage truce time and mission time
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
* yes - mission time is only managed by server and synced to clients when needed
*
* Public:
* no - script should only be called once by XEH_PostInit.sqf from server
*
* Global:
* no - effects are local on server until broadcasted to clients
*
* Sideeffects:
* start truce time with GVAR(truceStarted) = true + publicVar
* start main mission with GVARMAIN(startMission) = true + publicVar
* ends mission when time is over or one of winning conditions is true
* send a gui message on all clients
* log mission start state
* log rest of mission time
* log mission end state
*
* Example:
* [] spawn EFUNC(serverclock,startClock);
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */
// exit if startTime is already set -> means script is called twice
if (GVAR(startTime) != 0) exitWith{};
if (EGVAR(serverclock,missionStarted)) exitWith {};
waitUntil { time > 1};

/* CODE BODY */
GVAR(startTime) = serverTime;
publicVariable QGVAR(startTime);

// truceTime
// broadcast start of truceTime to all clients
GVAR(truceStarted) = true;
publicVariable QGVAR(truceStarted);

[] call EFUNC(log,writeStartState);

estimatedTimeLeft (GVAR(playTime) * 60 - TIME_ELAPSED);
_timeElapsed = TIME_ELAPSED;
private _timeUntilTruceEnds = GVAR(truceTime) * 60 - _timeElapsed;

_log_msg = format["Beginn Waffenruhe: %1 min", _timeUntilTruceEnds / 60];
["Mission", _log_msg] call EFUNC(log,write);

for "_t" from ceil(_timeUntilTruceEnds) to 0 step -1 do
{
    uisleep 1;
};

// nach Ablauf der Waffenruhe (timeout), starte Mission und gib Variable an alle Clients weiter
GVAR(missionStarted) = true;
publicVariable QGVAR(missionStarted);

// Benachrichtigung über Missionsstart an alle Clients
["Mission", "Mission gestartet", "green"] remoteExecCall [QEFUNC(gui,message), -2, false];

estimatedTimeLeft (GVAR(playTime) * 60 - TIME_ELAPSED);
_timeElapsed = TIME_ELAPSED;
_log_msg = format["Beginn Rest-Spielzeit: %1 min", (GVAR(playTime) * 60 - _timeElapsed) / 60];
["Mission", _log_msg] call EFUNC(log,write);

// begin with countdown of mission time
while {MISSION_IS_RUNNING} do
{

	// call all functions that were registered for running each minute
	GVAR(registeredCallbacks) apply {
		call compile format["[] call %1", _x];
	};

	uiSleep 60;
    estimatedTimeLeft (GVAR(playTime) * 60 - TIME_ELAPSED);
};

// wait last seconds exactly until mission ends
waitUntil
{
    _timeElapsed = TIME_ELAPSED;
    GVAR(playTime) * 60 - _timeElapsed < 0;
};

[] call EFUNC(log,writeEndState);

[] remoteExec [QEFUNC(mission,endMission), -2, true]; // call end script on all clients


