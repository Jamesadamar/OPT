/**
* Description:
* calculate current dominator side of all sectors and 
* increase side points by one
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
* yes - side points are managed by the server
*
* Public:
* no - script should only be called by server during time update (runClock)
*
* Global:
* no - effects are local on server until broadcasted to clients
*
* Sideeffects:
* increase GVARMAIN(eastPoints) or GVARMAIN(westPoints) by 1 if conditions are met + publicVar
* 
* Example:
* [] call EFUNC(sectorcontrol,calcPoints);
*/
#include "script_component.hpp"

// if one side is dominating -> increase side points by one
if !(GVARMAIN(dominator) isEqualTo sideUnknown) then {

    if (GVARMAIN(dominator) isEqualTo east) then {

        GVARMAIN(eastPoints) = GVARMAIN(eastPoints) + 1;
        publicVariable QGVARMAIN(eastPoints);

        _message = format ["CSAT +1 (NATO %1 | CSAT %2)", GVARMAIN(westPoints), GVARMAIN(eastPoints)];
        ["Punkte", _message] call EFUNC(log,write);

    };

    if (GVARMAIN(dominator) isEqualTo west) then {

        GVARMAIN(westPoints) = GVARMAIN(westPoints)  + 1;
        publicVariable QGVARMAIN(westPoints);

        _message = format ["NATO +1 (NATO %1 | CSAT %2)", GVARMAIN(westPoints), GVARMAIN(eastPoints)];
        ["Punkte", _message] call EFUNC(log,write);

    };
        
} else {

        _message = format ["Kein Dominator (NATO %1 | CSAT %2)", GVARMAIN(westPoints), GVARMAIN(eastPoints)];
        ["Punkte", _message] call EFUNC(log,write);

};