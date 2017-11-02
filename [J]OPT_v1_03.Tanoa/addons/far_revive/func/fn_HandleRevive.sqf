////////////////////////////////////////////////
// Revive Player
////////////////////////////////////////////////
params ["_injuredperson", "_healer"];

if (_healer getVariable ["FAR_isUnconscious", 0] == 1) exitWith {};
_injuredperson setVariable ["tcb_healer", _healer, true];
tcb_healerStopped = false;

_healer selectWeapon primaryWeapon _healer;
sleep 1;
_healer playAction "medicStart";
tcb_animDelay = time + 2;

private "_animChangeEVH";
if (isPlayer _healer) then {
	_animChangeEVH = _healer addEventhandler ["AnimChanged", {
		params ["_healer", "_anim"];

		if (primaryWeapon _healer != "") then {
			if (time >= tcb_animDelay) then {tcb_healerStopped = true};
		} else {
			if (_anim in ["amovpknlmstpsnonwnondnon","amovpknlmstpsraswlnrdnon"]) then {
				_healer playAction "medicStart";
			} else {
				if (!(_anim in ["ainvpknlmstpsnonwnondnon_medic0s","ainvpknlmstpsnonwnondnon_medic"])) then {
					if (time >= tcb_animDelay) then {tcb_healerStopped = true};
				};
			};
		};	
	}];
};

private _offset = [0,0,0]; _dir = 0;
private _relpos = _healer worldToModel position _injuredperson;
if((_relpos select 0) < 0) then{_offset=[-0.2,0.7,0]; _dir=90} else{_offset=[0.2,0.7,0]; _dir=270};
sleep 0.02;

if (isPlayer _healer) then {
	[_healer, _injuredperson] call opt_addons_fnc_medicEquipment;
};

_injuredperson attachTo [_healer,_offset];
_injuredperson setDir _dir;

private _time = time;

private _skill_factor = if (_healer call opt_addons_fnc_isMedic) then {40+(random 10)} else {70+(random 10)};
private _damage = (damage _injuredperson * _skill_factor);
if (_damage < 25) then {_damage = 25};
sleep 1;
if (_injuredperson getVariable ["FAR_isStabilized",0] == 1) then {
	_injuredperson setVariable ["FAR_isStabilized", 1, true];
};

// solange Zeit nicht abgelaufen, 
// beide am Leben, 
// Abstand zu Patient kleiner 2m,
// Heiler nicht bewusstlos und 
// Animation nicht abgebrochen
// -> aktualisiere Fortschrittsbalken
while {
	time - _time < _damage
	&& {alive _healer}
	&& {alive _injuredperson}
	&& {(_healer distance _injuredperson) < 2}
	&& {_healer getVariable "FAR_isUnconscious" == 0}
	&& {!tcb_healerStopped}
} do {
	sleep 0.5;
	if (isPlayer _healer) then {["Beginne mit Erstversorgung",((time - _time) / (_damage)) min 1] spawn opt_addons_fnc_progressBar};
};

if (isPlayer _healer) then {_healer removeEventHandler ["AnimChanged", _animChangeEVH]};
detach _healer;
detach _injuredperson;

_healer playAction "medicStop";
	
if (!alive _injuredperson) exitWith {["Für diesen Kameraden kommt jede Hilfe zu spät.",0, 0.035 * safezoneH + safezoneY,5,0.3] spawn BIS_fnc_dynamicText};
if (!alive _healer) exitWith {_injuredperson setVariable ["tcb_healer", ObjNull, true]};
_injuredperson setVariable ["tcb_healer", ObjNull, true];

call opt_addons_fnc_garbage;

_old_damage = damage _injuredperson;

if (!tcb_healerStopped) then {
	_isMedic = _healer call opt_addons_fnc_isMedic;
	_healed = switch (true) do {
		case (_isMedic && {(items _healer) find "Medikit" > -1}) : {0.05};
		case (_isMedic && {(items _healer) find "FirstAidKit" >= 0}) : {_healer removeItem "FirstAidKit"; 0.25};
		case (!_isMedic && {(items _healer) find "FirstAidKit" >= 0}) : {_healer removeItem "FirstAidKit"; _injuredperson setHit ["hands", 0.9]; 0.4};
		default {_injuredperson setHit ["legs", 0.4]; _injuredperson setHit ["hands", 0.9]; 0.6};
	};

	if (time - _time > _damage) then {
		//_old_damage = _injuredperson getVariable "tcb_ais_damageStore";
		/*
		if (_healed > _old_damage) then {
			_injuredperson setDamage _old_damage;
		} else {
			_injuredperson setDamage _healed;
		};
		_injuredperson setVariable ["tcb_ais_damageStore", damage _injuredperson];
		*/
		_injuredperson setVariable ["FAR_isUnconscious", 0, true];
		_injuredperson setVariable ["FAR_isDragged", 0, true];
		["addScore", [player, 1]] call tcb_fnc_NetCallEventCTS;
		//["tfar_removeMapMarker", _injuredperson] call tcb_fnc_NetCallEvent;

        _uid = getPlayerUID _injuredperson;
        _id = (opt_ListOfPlayers apply {_x select 0}) find _uid;
        _name1 = (opt_ListOfPlayers select _id) select 1;

        _uid = getPlayerUID _healer;
        _id = (opt_ListOfPlayers apply {_x select 0}) find _uid;
        _name2 = (opt_ListOfPlayers select _id) select 1;

        private _message = format [
            "%1 (%2) wurde von %3 (%4) wiederbelebt.", 
            _name1, 
            _injuredperson getVariable "opt_var_playerSide",
            _name2,
            _healer getVariable "opt_var_playerSide"
        ];

        // übergib Kategorie und Nachricht an log-FUnktion
	    ["opt_eh_server_log_write", ["Revive", _message]] call CBA_fnc_serverEvent;
	};
} else {
	["Du hast den Vorgang abgebrochen.",0, 0.035 * safezoneH + safezoneY,5,0.3] spawn BIS_fnc_dynamicText;
};

true