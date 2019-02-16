/**
* Description:
* client GPS. Create map marker for leader of all groups and own squad members.
* all marker are local
*
* Author:
* [GNC]Lord-MDB & James
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
* no
*
* Global:
* no
*
* Sideeffects:
* create local marker
*
* Example:
* [] spawn EFUNC(gps,gps);
*
*/
#include "script_component.hpp"

/* PARAMS */

/* VALIDATION */

/* CODE */
// default GPS mode: all squad units are visible
GVAR(mode) = 1;

// GPS mode: all units are visible in mode 2
if (typeOf player in GVARMAIN(officer)) then
{
    GVAR(mode) = 2;
};

// create 80 local empty marker for units of player side
// create 80 local empty marker for down units
private _unitMarkerPool = [];
private _unitDownMarkerPool = [];
for "_i" from 1 to (GVAR(maxMarkerNo) + 1) do
{
    _unitMarkerPool pushBack ([PLAYER_SIDE, _i] call FUNC(createUnitMarker));
    _unitDownMarkerPool pushBack ([_i] call FUNC(createDownMarker));
};

// create special local player marker
private _markerplayer = [] call FUNC(createPlayerMarker);

sleep 1;

while {true} do
{

    ([] call FUNC(selectUnits)) params
    [
        "_unitsAlive",
        "_unitsDown"
    ];

    // move all marker to origin and hide them
    (_unitMarkerPool + _unitDownMarkerPool) apply
    {
        _x setMarkerPosLocal [0,0];
        _x setMarkerTextLocal "";
        _x setMarkerAlphaLocal 0;

    };

    // update player marper
    _markerplayer setMarkerPosLocal (getPosATLVisual (vehicle player));

    // process all unconscious units
    if (count _unitsDown > 0) then
    {
        for "_i" from 0 to (count _unitsDown - 1) do
        {
            private _obj = _unitsDown select _i;
            private _name = UNIT_NAME(_obj);
            private _markerDown = _unitDownMarkerPool select _i;

            if ((_obj getVariable ["FAR_isUnconscious", 0]) == 1 and FAR_REVIVE_DOWN_MARKER) then
            {
                _markerDown setMarkerPosLocal (getPosATLVisual (vehicle _obj));
                _markerDown setMarkerAlphaLocal FAR_REVIVE_MARKER_ALPHA;
                _markerDown setMarkerTextLocal format["%1 am Boden", _name];

            } else
            {
                _markerDown setMarkerPosLocal [0,0];
                _markerDown setMarkerAlphaLocal 1;
                _markerDown setMarkerTextLocal "";
            }
        };

    };

    // process all conscious units
    _unitsAlive = _unitsAlive - _unitsDown;
    if (count _unitsAlive > 0) then
    {
        for "_i" from 0 to (count _unitsAlive - 1) do
        {
            private _obj = _unitsAlive select _i;
            private _marker = _unitMarkerPool select _i;

            if (alive _obj) then
            {
                private _name = UNIT_NAME(_obj);

                // update unit marker
                _marker setMarkerPosLocal (getPosATLVisual (vehicle _obj));
                _marker setMarkerDirLocal (getDirVisual (vehicle _obj));
                _marker setMarkerAlphaLocal 0.6;

                // vehicle info
                if (!(vehicle _obj isEqualTo _obj)) then
                {

                    private _vec_name = getText (configFile >> "cfgVehicles" >> typeOf (vehicle _obj) >> "displayName");

                    // Spezialfall Drohne
                    if ((vehicle _obj) in allUnitsUAV) then
                    {
                        private _operator = (UAVControl vehicle _obj) select 0;

                        // UAV Operator ja/nein
                        if (!isNull _operator) then
                        {
                            _marker setMarkerTextLocal format["%1 (%2)", _vec_name, UNIT_NAME(_operator)];

                        } else
                        {
                            _marker setMarkerTextLocal format["%1 (---)", _vec_name];

                        };

                    } else
                    {
                        _marker setMarkerTextLocal format["%1 (%2)", _vec_name, _name];

                    };

                } else
                {
                    if (isPlayer _obj) then
                    {
                        if (_obj isEqualTo (leader _obj)) then
                        {
                            _marker setMarkerTextLocal format["%1 (%2)", _name, groupID (group _obj)];
                            _marker setMarkerSizeLocal [0.9, 0.9];

                        } else
                        {
                            _marker setMarkerTextLocal _name;

                        };

                    } else
                    {
                        _marker setMarkerTextLocal "";
                        _marker setMarkerPosLocal [0,0];
                        _marker setMarkerAlphaLocal 0;
                    };

                };

            } else
            {
                _marker setMarkerTextLocal "";
                _marker setMarkerPosLocal [0,0];
                _marker setMarkerAlphaLocal 0;

            };
        };
    };

    sleep GVAR(updateInterval);
};
