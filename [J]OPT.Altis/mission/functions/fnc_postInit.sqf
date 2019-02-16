// init script for players
#include "script_component.hpp"

LOG_1("%1 --- opt_mission_fnc_postInit started",diag_ticktime);

// store playerSide for logs and other functions
player setVariable [QGVARMAIN(playerSide), playerSide, true];

// store player owner ID 
player setVariable [QGVARMAIN(ownerID), clientOwner, true];

// add to zeus
[player] remoteExecCall [QEFUNC(common,addToCurator), 2, false];

// setup earplug ace menu
private _action_earplug = [
    QGVAR(earplug),
    OPT_MISSION_ACTION_EARPLUG,
    "",
    {
        params ["_target", "_player", "_params"]; 

        [] call FUNC(earplugs);
    },
    {
        true
    }
] call ace_interact_menu_fnc_createAction;

[
    player, 
    1, 
    ["ACE_SelfActions", "ACE_Equipment"],
    _action_earplug
] call ace_interact_menu_fnc_addActionToObject;


// checking for failed player init
if (isMultiplayer && hasInterface) then {	// only on dedicated environment
	true spawn {
		waitUntil {player == player && hasInterface};
		private _puid = getPlayerUID player;
		if (isNil "_puid") exitWith {diag_log "UID is Nil - init stoped"; endMission "LOSER";};
		if (_puid == "") exitWith {diag_log "UID is empty - init stoped"; endMission "LOSER";};
	};
};

// TEAM BALANCE - end mission for player if side is full
// nicht in onPlayerRespawn, da nur zu Missionsbeginn prüfen
if (isMultiplayer && hasInterface) then {
	if (GVARMAIN(teamBalance) > 0) then {
		_en_pa = if (playerSide == blufor) then {playersNumber opfor} else {playersNumber blufor};
		if ((playersNumber playerSide) > (_en_pa + OPT_PARAM_TEAMBALANCE)) then {
			endMission (switch (playerSide) do {
				case (blufor) : {"balanceBLUFOR"};
				case (opfor) : {"balanceOPFOR"};
				default {"LOSER"};
			});
		};
	};
};

player action ["WeaponOnBack", player];

// new command since 1.52 - to disable the player raycasts in PvP cause not needed functionality but a lot of cpu calcuation
disableRemoteSensors true;
setTerrainGrid 3.125;
enableEnvironment true;
enableRadio false;
//0 fadeRadio 0;	<-- produce the mysterie bug ;-P
player disableConversation true;
enableSentences false;
oldSubs = showSubtitles false;
enableSaving [false, false];
enableTeamswitch false;

LOG_1("%1 --- opt_mission_fnc_postInit processed",diag_ticktime);