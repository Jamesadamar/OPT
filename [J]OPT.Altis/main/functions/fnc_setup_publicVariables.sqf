// setup PublicVariable
// executed only from the Server one time
// define all public variables here
#include "script_component.hpp"

GVARMAIN(eastPoints) = 0;
publicVariable QGVARMAIN(eastPoints);
GVARMAIN(westPoints) = 0;
publicVariable QGVARMAIN(westPoints);
GVARMAIN(draw) = 0;
publicVariable QGVARMAIN(draw);
GVARMAIN(eastHasWon)= 0;
publicVariable QGVARMAIN(eastHasWon);
GVARMAIN(westHasWon) = 0;
publicVariable QGVARMAIN(westHasWon) ;
GVARMAIN(dominator) = sideUnknown;
publicVariable QGVARMAIN(dominator);

GVARMAIN(westFlags) = [];
GVARMAIN(eastFlags) = [];

publicVariable QGVARMAIN(westFlags);
publicVariable QGVARMAIN(eastFlags);