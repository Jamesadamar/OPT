/**
* Description:
* Erstellen von allen Markierungen für die Waffenruhe. Flaggenmarker mit Namen,Beampositonen mit namen,Grenzline
* 
* Author: 
* [GNC]Lord-MDB
*
* Arguments:
* -
*
* Return Value:
* -
* 
*
* Server only:
* no

*
* Public:
* no
*
* Global:
* no

*
* Sideeffects:
* no
* 
* Example:
* spawn EFUNC(Waffenruhemarker,markierungen)
*
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE BODY */

private _beamOrte = [];
private _flaggenOrte = [];
private _grenzlinie = [];

//Aufteilung Marker East und West
if (PLAYER_SIDE == east) then
{
    _beamOrte = EGVAR(beam,locations_east);
	_flaggenOrte = GVARMAIN(nato_flags_pos);

}
else
{
    _beamOrte = EGVAR(beam,locations_west);
	_flaggenOrte = GVARMAIN(csat_flags_pos);

};

// Marker erstellen

private _beammarker = [];
private _flaggenmarker = [];

if (GVAR(on)) then
{
    // Nur wären der Waffenruhe Marker erstellen
    if (!EGVAR(serverclock,missionStarted)) then
    {
		if (GVAR(WRMbeam)) then
		{
			//Beampostionen Marker erstellen 
			private _i=0;
			_beamOrte apply 
			{
				private _arry = _x;		
				private _lvl = _arry select 2;
				private _beam_pos = _arry select 0;
				private _name = _arry select 1;
				private _xPos = _beam_pos select 0;
				private _yPos = _beam_pos select 2;
				
				private _Color = BEAM_MAP_COLOR_DEFAULT;

				if (_lvl == 1) then
				{
					_Color = BEAM_MAP_COLOR_LVL_ONE;
				};

				if (_lvl == 2) then
				{
					_Color = BEAM_MAP_COLOR_LVL_TWO; 
				};
					
				//Systemchat format ["BMC:%1 L:%2 N:%3 BP:%4",_Color,_lvl,_name,_beam_pos];	

				private _marker = createMarkerLocal [format["%1_%2", QGVAR(beam_marker), _i], [_xPos,_yPos]];
				_marker setMarkerTypeLocal "mil_dot";
				_marker setMarkerTextLocal _name;
				_marker setMarkerSizeLocal [1,1];
				_marker setMarkerColorLocal _Color;
				
				_beammarker pushBack _marker;
				_i=_i+1;				
			}; 
		};
		if (GVAR(WRMflagge)) then
		{
			//Systemchat format ["FMC:%1",_flaggenOrte];	
			//Flaggenpostionen Marker erstellen 
			_i=0;
			_flaggenOrte apply 
			{
				_arry = _x;		
				private _owner = _arry select 2;
				_name = _arry select 3;
				_xPos = _arry select 0;
				_yPos = _arry select 1;
				private _aktiv = _arry select 4;
				
				_Color = FLAG_MAP_COLOR_DEFAULT;

				if (_owner == east) then
				{
					_Color = FLAG_MAP_COLOR_EAST;
				};

				if (_owner == west) then
				{
					_Color = FLAG_MAP_COLOR_WEST; 
				};
					
				//Systemchat format ["FMC:%1 A:%2 N:%3 FP:%4 Fo:%5",_Color,_aktiv,_name,(_arry select 0),_owner];	
				if (_aktiv) then
				{
					_marker = createMarkerLocal [format["%1_%2", QGVAR(flag_marker), _i], [_xPos,_yPos]];
					_marker setMarkerTypeLocal "mil_dot";
					_marker setMarkerTextLocal _name;
					_marker setMarkerSizeLocal [1,1];
					_marker setMarkerColorLocal _Color;
							
					_flaggenmarker pushBack _marker;
					_i=_i+1;
				};		
			}; 
		};	
		// Marker löschen nach Ende Waffenruhe
		private _go = true;
		while {_go} do 
		{
			if (EGVAR(serverclock,missionStarted)) then
			{
				_beammarker apply {deleteMarker _x;};
				_flaggenmarker apply {deleteMarker _x;};
				_go = false;
			};
			//Systemchat format ["t:%1 b:%2",time,EGVAR(serverclock,missionStarted)];
			sleep 1;
		};
    };
};




