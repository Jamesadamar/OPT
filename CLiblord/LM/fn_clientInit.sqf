// Include the macro-file from the module-root
#include "macros.hpp"

/**
 * CLibLord - clientInit
 * 
 * Author: Raven
 * 
 * Description:
 * Erstellt Marker für alle Spieler und bindet sie an alle Spieler an. 
 * 
 * 
 * Parameter(s):
 * 0: None <Any>
 * 
 * Return Value:
 * None <Any>
 * 
 */

diag_log "Successfully loaded the CLibLord/LM module on the client";

DFUNC(markerErstellen) = 
{
	params 
	[
		"_Name"
	];
	private _units = playableUnits;
	private _markerpool = [];
	
	for "_i" from 0 to count _units do 
	{ 
		private _marker = createMarkerLocal [format["%1_%2", _Name, _i], [0,0]];
		_marker setMarkerTypeLocal "mil_triangle";
		_marker setMarkerColorLocal "ColorBrown";
		_marker setMarkerSizeLocal [0.8, 0.8];
		_marker setMarkerAlphaLocal 0.6;
		_markerpool pushBack _marker;
	};	
	_markerpool
	
};

["missionStarted", {
	diag_log "The mission has started";
	
	markerpool = [];
	markerpool = ["A"] call FUNC(markerErstellen);
	
}, []] call CFUNC(addEventHandler); 



GVAR(Unitmarker) = 
[
	{
	private _units = playableUnits;
	private _unitsToMark = [];
		
	for "_i" from 0 to count _units do 
	{ 
		if (alive (_units select _i)) then
		{
			_unitsToMark pushBack (_units select _i);
		};
	};
	
	for "_i" from 0 to count _unitsToMark do 
	{ 
		
		(markerpool select _i) setmarkerpos getPosWorld (_unitsToMark select _i);
		(markerpool select _i) setmarkerdir getdir (_unitsToMark select _i);
		(markerpool select _i) setMarkerTextLocal format["%1",name (_unitsToMark select _i)];
	};	

	}, 0, [markerpool]
	
] call CFUNC(addPerFrameHandler);


