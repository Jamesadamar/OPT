// hier bitte alle Variablen anlegen, die man in irgendeiner Weise
// einstellen können soll oder irgendwann mal ändern will
// Beispiele: Add-Action Texte, Variablen, Konstanten, Marker etc
// #define MEIN_MAKRO ...
#define TIME_ELAPSED serverTime - GVAR(startTime)
#define MISSION_IS_RUNNING GVARMAIN(eastHasWon) == 0 and \
 GVARMAIN(westHasWon) == 0 and \
 GVARMAIN(draw) == 0 and \
 (GVAR(playTime) * 60 - (TIME_ELAPSED)) > 59