/**
* SETUP FILE
*/
// -------- setup all stuff in this file
// #define __DEBUG__

/**
* Allgemeine Einstellungen
* wird in descprition.ext verwendet
*/
// hier den Missionsnamen festlegen
#define __MISSION_NAME__ "Schlacht #1"
// Versionsnummer eintragen (nur die des Base Templates!!!)
#define __VERSION__ Complete new build 1.MAJOR.MINOR.BUILD
// made by
#define __MADE_BY__ "James, Lord-MDB"
// short description
#define __MISSION_DESCRIPTION__ "This is an Operation Pandora Trigger Mission"

// festlegen des Respawn Typs:
// 0 = No Respawn (NONE)
// 1 = Respawn als Möwe/Rabe/Schmetterling (BIRD)
// 2 = Instant, also an der Stelle an der man stirbt
// 3 = Respawn an der Base (BASE)
// 4 = Respawn in der Gruppe, nur wenn noch KI da ist (GROUP)
// 5 = Respawn in eine KI der eigenen Seite, sofern vorhanden (SIDE)
#define __RESPAWN_TYPE__ 3

// Anzahl max. möglicher Spieler eingeben
#define __PLNUM__ 115

// falls die Mission respawn haben soll, dann die folgende Zeile auskommentieren und respawn Zeit festlegen
// wenn das Respawndelay größer als 10 Sekunden ist erscheint ein berühmtes Zitat während die Kamera den leblosen Körper zeigt
#define __RESPAWN_DELAY__ 12

// wenn nicht auskommentiert mit // dann verdoppelt sich das Respawndelay des Spielers mit jedem Respawn
// Beispiel: Delay am Anfang, 30 Sekunden, der 3. Respawn dauert dann schon 4 Minuten!
// Die Zahl gibt das maximale Delay an (in Sekunden)
//#define __FLEXIBLE_RESPAWNTIME__ 300

// DM - Death Match
// CTF - Capture the Flag
// FF - Flag Fight
// Coop / ZCoop -Cooperative Mission
// Team - Team Mission
// SC - Sector Control
// Hold - Hold Location
#define __GAMETYPE__ SC

// wenn nicht auskommentiert mit // dann werden die in der Klammer definierten Channels blockiert und sind nur für den Admin frei
// 	0 = 	Global
// 	1 = 	Side
// 	2 = 	Command
// 	3 = 	Group
// 	4 = 	Vehicle
// 	5 = 	Direct
// 	6 = 	System
//#define __DISABLE_CHAT_CHANNELS__ {0}

