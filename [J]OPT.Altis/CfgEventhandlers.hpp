#define EXCLUDE_CBA_MACROS
#include "main\script_component.hpp"

/* Example from CBA
class Extended_PreStart_EventHandlers {
    class My_event_on_game_start {
        init = "diag_log isClass (configFile >> 'CfgPatches' >> 'CBA_Keybinding')";
    };
};
*/

class Extended_PreInit_EventHandlers {
    class GVARMAIN(autoparachute) {
        init = QUOTE(call compile preProcessFileLineNumbers 'autoparachute\XEH_PreInit.sqf');
    };
    class GVARMAIN(beam) {
        init = QUOTE(call compile preProcessFileLineNumbers 'beam\XEH_PreInit.sqf');
    };
    class GVARMAIN(berggang) {
        init = QUOTE(call compile preProcessFileLineNumbers 'berggang\XEH_PreInit.sqf');
    };
    class GVARMAIN(cargo) {
        init = QUOTE(call compile preProcessFileLineNumbers 'cargo\XEH_PreInit.sqf');
    };
    class GVARMAIN(common) {
        init = QUOTE(call compile preProcessFileLineNumbers 'common\XEH_PreInit.sqf');
    };
    class GVARMAIN(database) {
        init = QUOTE(call compile preProcessFileLineNumbers 'database\XEH_PreInit.sqf');
    };
    class GVARMAIN(composition) {
        init = QUOTE(call compile preProcessFileLineNumbers 'composition\XEH_PreInit.sqf');
    };
    class GVARMAIN(fieldrepair) {
        init = QUOTE(call compile preProcessFileLineNumbers 'fieldrepair\XEH_PreInit.sqf');
    };
    class GVARMAIN(flip) {
        init = QUOTE(call compile preProcessFileLineNumbers 'flip\XEH_PreInit.sqf');
    };
    class GVARMAIN(freeze) {
        init = QUOTE(call compile preProcessFileLineNumbers 'freeze\XEH_PreInit.sqf');
    };
    class GVARMAIN(gps) {
        init = QUOTE(call compile preProcessFileLineNumbers 'gps\XEH_PreInit.sqf');
    };
    class GVARMAIN(gui) {
        init = QUOTE(call compile preProcessFileLineNumbers 'gui\XEH_PreInit.sqf');
    };
    class GVARMAIN(hud) {
        init = QUOTE(call compile preProcessFileLineNumbers 'hud\XEH_PreInit.sqf');
    };
    class GVARMAIN(intro) {
        init = QUOTE(call compile preProcessFileLineNumbers 'intro\XEH_PreInit.sqf');
    };
    class GVARMAIN(log) {
        init = QUOTE(call compile preProcessFileLineNumbers 'log\XEH_PreInit.sqf');
    };
    class GVARMAIN(main) {
        init = QUOTE(call compile preProcessFileLineNumbers 'main\XEH_PreInit.sqf');
    };
     class GVARMAIN(marker) {
        init = QUOTE(call compile preProcessFileLineNumbers 'marker\XEH_PreInit.sqf');
    };
      class GVARMAIN(mhq) {
        init = QUOTE(call compile preProcessFileLineNumbers 'mhq\XEH_PreInit.sqf');
    };
    class GVARMAIN(mission) {
        init = QUOTE(call compile preProcessFileLineNumbers 'mission\XEH_PreInit.sqf');
    };
    class GVARMAIN(persistence) {
        init = QUOTE(call compile preProcessFileLineNumbers 'persistence\XEH_PreInit.sqf');
    };
    class GVARMAIN(radar) {
        init = QUOTE(call compile preProcessFileLineNumbers 'radar\XEH_PreInit.sqf');
    };
    class GVARMAIN(revive) {
        init = QUOTE(call compile preProcessFileLineNumbers 'revive\XEH_PreInit.sqf');
    };
    class GVARMAIN(classlock) {
        init = QUOTE(call compile preProcessFileLineNumbers 'classlock\XEH_PreInit.sqf');
    };
    class GVARMAIN(sectorcontrol) {
        init = QUOTE(call compile preProcessFileLineNumbers 'sectorcontrol\XEH_PreInit.sqf');
    };
    class GVARMAIN(serverclock) {
        init = QUOTE(call compile preProcessFileLineNumbers 'serverclock\XEH_PreInit.sqf');
    };
    class GVARMAIN(tfar) {
        init = QUOTE(call compile preProcessFileLineNumbers 'tfar\XEH_PreInit.sqf');
    };
    class GVARMAIN(training) {
        init = QUOTE(call compile preProcessFileLineNumbers 'training\XEH_PreInit.sqf');
    };
    class GVARMAIN(uav) {
        init = QUOTE(call compile preProcessFileLineNumbers 'uav\XEH_PreInit.sqf');
    };
	class GVARMAIN(Waffenruhemarker) {
        init = QUOTE(call compile preProcessFileLineNumbers 'Waffenruhemarker\XEH_PreInit.sqf');
    };
    class GVARMAIN(warehouse) {
        init = QUOTE(call compile preProcessFileLineNumbers 'warehouse\XEH_PreInit.sqf');
    };
	class GVARMAIN(waffenwechsel) {
        init = QUOTE(call compile preProcessFileLineNumbers 'waffenwechsel\XEH_PreInit.sqf');
    };

};

class Extended_PostInit_EventHandlers {
    class GVARMAIN(autoparachute) {
        init = QUOTE(call compile preProcessFileLineNumbers 'autoparachute\XEH_PostInit.sqf');
    };
    class GVARMAIN(beam) {
        init = QUOTE(call compile preProcessFileLineNumbers 'beam\XEH_PostInit.sqf');
    };
    class GVARMAIN(berggang) {
        init = QUOTE(call compile preProcessFileLineNumbers 'berggang\XEH_PostInit.sqf');
    };
    class GVARMAIN(cargo) {
        init = QUOTE(call compile preProcessFileLineNumbers 'cargo\XEH_PostInit.sqf');
    };
    class GVARMAIN(composition) {
        init = QUOTE(call compile preProcessFileLineNumbers 'composition\XEH_PostInit.sqf');
    };
    class GVARMAIN(common) {
        init = QUOTE(call compile preProcessFileLineNumbers 'common\XEH_PostInit.sqf');
    };
    class GVARMAIN(database) {
        init = QUOTE(call compile preProcessFileLineNumbers 'database\XEH_PostInit.sqf');
    };
    class GVARMAIN(fieldrepair) {
        init = QUOTE(call compile preProcessFileLineNumbers 'fieldrepair\XEH_PostInit.sqf');
    };
    class GVARMAIN(flip) {
        init = QUOTE(call compile preProcessFileLineNumbers 'flip\XEH_PostInit.sqf');
    };
    class GVARMAIN(freeze) {
        init = QUOTE(call compile preProcessFileLineNumbers 'freeze\XEH_PostInit.sqf');
    };
    class GVARMAIN(gps) {
        init = QUOTE(call compile preProcessFileLineNumbers 'gps\XEH_PostInit.sqf');
    };
    class GVARMAIN(hud) {
        init = QUOTE(call compile preProcessFileLineNumbers 'hud\XEH_PostInit.sqf');
    };
    class GVARMAIN(intro) {
        init = QUOTE(call compile preProcessFileLineNumbers 'intro\XEH_PostInit.sqf');
    };
    class GVARMAIN(log) {
        init = QUOTE(call compile preProcessFileLineNumbers 'log\XEH_PostInit.sqf');
    };
     class GVARMAIN(marker) {
        init = QUOTE(call compile preProcessFileLineNumbers 'marker\XEH_PostInit.sqf');
    };
     class GVARMAIN(mhq) {
        init = QUOTE(call compile preProcessFileLineNumbers 'mhq\XEH_PostInit.sqf');
    };
    class GVARMAIN(mission) {
        init = QUOTE(call compile preProcessFileLineNumbers 'mission\XEH_PostInit.sqf');
    };
    class GVARMAIN(persistence) {
        init = QUOTE(call compile preProcessFileLineNumbers 'persistence\XEH_PostInit.sqf');
    };
    class GVARMAIN(radar) {
        init = QUOTE(call compile preProcessFileLineNumbers 'radar\XEH_PostInit.sqf');
    };
    class GVARMAIN(revive) {
        init = QUOTE(call compile preProcessFileLineNumbers 'revive\XEH_PostInit.sqf');
    };
    class GVARMAIN(classlock) {
        init = QUOTE(call compile preProcessFileLineNumbers 'classlock\XEH_PostInit.sqf');
    };
    class GVARMAIN(sectorcontrol) {
        init = QUOTE(call compile preProcessFileLineNumbers 'sectorcontrol\XEH_PostInit.sqf');
    };
    class GVARMAIN(serverclock) {
        init = QUOTE(call compile preProcessFileLineNumbers 'serverclock\XEH_PostInit.sqf');
    };
    class GVARMAIN(tfar) {
        init = QUOTE(call compile preProcessFileLineNumbers 'tfar\XEH_PostInit.sqf');
    };
    class GVARMAIN(training) {
        init = QUOTE(call compile preProcessFileLineNumbers 'training\XEH_PostInit.sqf');
    };
    class GVARMAIN(uav) {
        init = QUOTE(call compile preProcessFileLineNumbers 'uav\XEH_PostInit.sqf');
    };
	class GVARMAIN(Waffenruhemarker) {
        init = QUOTE(call compile preProcessFileLineNumbers 'Waffenruhemarker\XEH_PostInit.sqf');
	};	
    class GVARMAIN(warehouse) {
        init = QUOTE(call compile preProcessFileLineNumbers 'warehouse\XEH_PostInit.sqf');
    };
	class GVARMAIN(waffenwechsel) {
        init = QUOTE(call compile preProcessFileLineNumbers 'waffenwechsel\XEH_PostInit.sqf');
    };
};