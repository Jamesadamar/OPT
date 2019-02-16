/**
* Description:
* play intro
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
* no - should be called only at mission start by server
*
* Global:
* no
*
* Sideeffects:
* cinematic effects
*
* Example:
* [] call EFUNC(intro,intro);
*/
#include "script_component.hpp"

/* VALIDATION */
if (!canSuspend) exitWith{};

// wait until player is initializied
waitUntil {!isNull player && !((findDisplay 46) isEqualTo displayNull)};

/* SETUP */
enableRadio false;
EnableEnvironment false;
allUnits apply
{
    _x disableConversation true;
    _x setVariable ["BIS_noCoreConversations", true];
};

[0,0,false] spawn BIS_fnc_cinemaBorder;

playMusic "LeadTrack05_F_EPC";

sleep 2;
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [8];
"dynamicBlur" ppEffectCommit 8;
waitUntil{ppEffectCommitted "dynamicBlur"};

/* INTRO */
sleep 2;
[
    parseText format
    [
        "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><br/>%2</t>",
        __MISSION_NAME__,
        "von: " + __MADE_BY__
    ],
    true,
    nil,
    7,
    0.7,
    0.1
] spawn BIS_fnc_textTiles;

schrift0 = ["<t size='1.2'>" + "Habt alle viel Spaß! Spielt hart, aber fair!"+"</t>",0,0.8,3,4,0,3010] spawn bis_fnc_dynamicText;
sleep 8;

titlecut["","BLACK OUT",3];
sleep 3;

// Zufallsauswahl eines von 40 Quotes
private _quotes = [];
for "_i" from 0 to 23 do
{
    _quotes pushBack format["STR_A3_Campaign_Quote_%1", _i];
};
for "_i" from 30 to 44 do
{
    _quotes pushBack format["STR_A3_Campaign_Quote_%1", _i];
};
private _quote = localize (_quotes select (floor random (count _quotes)));
_quote = _quote splitString "-";

private _txt = format
[
    "<t size='1.3' align='center'>%1</t><br/><t size='1.2' align='right' color='#cccccc'>%2</t>",
    _quote select 0,
    _quote select 1
];
[_txt,0,0,8,3,0,3010] spawn bis_fnc_dynamicText;
sleep 13;

// number of players on each side
_txt = format["<t size='1' align='center'> <br/>
Zu dieser Schlacht haben sich zusammengefunden: <br/>
<t size='1.5' color='#0000ff'>NATO %1</t> vs <t size='1.5' color='#ff0000'>CSAT %2</t></t><br/><t size='0.7'>", playersNumber west, playersNumber east];

[_txt,0,0,14,2,-0.5,3010] spawn bis_fnc_dynamicText;
sleep 8;

"dynamicBlur" ppEffectEnable false;

private _cam = "camera" camCreate [0,0,0];
_cam cameraEffect ["internal", "back"];
_cam camPrepareFOV 0.750;
_cam camCommit 0;

/* SHOW ALL GROUPS */
allGroups apply
{
    private _grp = _x;

    if (isPlayer (leader _grp)) then
    {
        _cam camSetTarget (leader _grp);
        _cam camSetRelPos [0, 8, 4];
        _cam camCommit 0;
        waitUntil {camCommitted _cam};

        titleCut ["", "BLACK FADED", 1];
        sleep 1;
        titleCut ["", "BLACK IN", 1];
        sleep 2;

        private _names = ((units _grp) apply {UNIT_NAME(_x)}) joinString ", ";
        private _side = ["CSAT","NATO"] select (UNIT_SIDE(leader _grp) isEqualTo west);
        [
            format["%1<br/>%2<br/>%3", _names, groupID _grp, _side],
            0,
            0,
            3,
            0.5,
            -0.1,
            9999
        ] spawn bis_fnc_dynamicText;
        sleep (2 * (count units _grp) min 10);

        titleCut ["", "BLACK OUT", 2];
        titleText ["", "Plain Down", 1];
        sleep 2;
        [
            "",
            0,
            0,
            0,
            0,
            -0.1,
            9999
        ] spawn bis_fnc_dynamicText;
    }
};


/* FINISH INTRO */
_cam cameraEffect ["terminate", "back"];
camDestroy  _cam;

titleCut ["", "BLACK IN", 2];
sleep 2;

[1,nil,false] spawn BIS_fnc_cinemaBorder;
enableRadio true;
EnableEnvironment true;
allUnits apply
{
    _x disableConversation false;
    _x setVariable ["BIS_noCoreConversations", false];
};

playMusic "";

[getPlayerUID player] remoteExecCall [QFUNC(updateIntroStatus), 2, false];