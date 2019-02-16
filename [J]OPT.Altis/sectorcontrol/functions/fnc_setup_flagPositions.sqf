/*
Diese Datei enthält alle Flaggenpositionen aufgeteilt in NATO und CSAT.
Jede Flagge besitzt Koordinaten (x,y) sowie die owner Seite, die im Besitz der Flagge ist.
Demnach muss nach jeder Schlacht nur der owner angepasst werden.
west -> Angriffsziel für CSAT
east -> Angriffsziel für NATO
*/
#include "script_component.hpp"

GVARMAIN(nato_flags_pos) = [

// Basis Nordost - 7
	   [12635, 16402, west,"1- Lakka - Fabrik",false], // 1- Lakka - Fabrik - garbage3
	   [12421, 15574, west,"1 - Lakka - Stadt",false], // 1 - Lakka - Stadt - garbage5
	   [12988, 15068, west,"1 - Lakka - Stavros",false], // 1 - Lakka - Stavros - garbage bags
	   
	   [16592, 19052, west,"2 - Athira - Militär",false], // 2 - Athira - Militär - garbage line
	   [14018, 18747, west,"2 - Athira - Stadt",false], // 2 - Athira - Stadt - garbage barrel
	   [14361, 18922, west,"2 - Athira - Industrie",false], // 2 - Athira - Industrie - garbage barrel greek
	   
	   [16657, 16122, west,"3 - Telos - Anthrakia",false], // 3 - Telos - Anthrakia - garbage pallet
	   [16363, 17238, west,"3 - Telos - Stadt",false], // 3 - Telos - Stadt - garbage washing
	   [16079, 16999, west,"3 - Telos - Militär",false], // 3 - Telos - Militär - luggage bunch

	   [12608, 14284, west,"4 - Neochori - Stadt",false], // 4 - Neochori - Stadt - luggage couple
	   [11906, 14350, west,"4 - Neochori - Landhaus",false], // 4 - Neochori - Landhaus - luggage few
	   [11096, 14616, west,"4 - Neochori - Alikampos",false], // 4 - Neochori - Alikampos - luggage heap
	   
	   [10457, 17229, west,"5 - Koroni - Orino",false], // 5 - Koroni - Orino - luggage pile
	   [10908, 17860, west,"5 - Koroni - VTOL-Absturz",false], // 5 - Koroni - VTOL-Absturz - oil spill
	   [11728, 18291, west,"5 - Koroni - Dorf",false], // 5 - Koroni - Dorf - garbage heap 1

	   [12791, 19679, west,"6 - Frini - Ifestiona",false], // 6 - Frini - Ifestiona - garbage heap 2
	   [14236, 21229, west,"6 - Frini - Militär",false], // 6 - Frini - Militär - garbage heap 3
	   [14621, 20772, west,"6 - Frini - Kirche",false], // 6 - Frini - Kirche - garbage heap 4
	   
	   [18128, 15267, west,"7 - Charkia - Zentrum",false], // 7 - Charkia - Zentrum - junkpile
	   [18774, 16598, west,"7 - Charkia - Rodopoli",false], // 7 - Charkia - Rodopoli - tyre
	   [18204, 17271, west,"7 - Charkia - Alte Kommandatur",false], // 7 - Charkia - Alte Kommandatur - tyre1

	   [16943, 12635, west,"8 - Pyrgos - Zentrum",true], // 8 - Pyrgos - Zentrum - tyre line
	   [17437, 13137, west,"8 - Pyrgos - Militär",true], // 8 - Pyrgos - Militär - land tyres
	   [19454, 13240, west,"8 - Pyrgos - Dorida",true], // 8 - Pyrgos - Dorida - garbage bin
	   
	   [10979, 13387, west,"9 - Agios Dionysios - Poliakko",false], // 9 - Agios Dionysios - Poliakko - container closed
	   [9558, 15110, west,"9 - Agios Dionysios - Fabrik",false], // 9 - Agios Dionysios - Fabrik - container open
	   [9252, 15800, west,"9 - Agios Dionysios - Zentrum",false], // 9 - Agios Dionysios - Zentrum - tire van
	   
	   [20956, 17059, west,"10 - Paros - Zentrum",false], // 10 - Paros - Zentrum - tire van 2 
	   [21331, 16388, west,"10 - Paros - Kalochori",false], // 10 - Paros - Kalochori -  tire van transport
	   [22560, 16400, west,"10 - Paros - Handelsposten",false], // 10 - Paros - Handelsposten - tire van spare
	   
	   [21691, 14075, west,"11 - Sumpf - Farm",false], // 11 - Sumpf - Farm - wheeliebin
	   [20888, 14625, west,"11 - Sumpf - Krokodiljäger",false], // 11 - Sumpf - Krokodiljäger - wheeliebin
	   [18481, 14309, west,"11 - Sumpf - Mine",false] // 11 - Sumpf - Mine - wheeliebin
];

GVARMAIN(csat_flags_pos) = [

//Basis aussen
	   [21385, 9042, east,"1 - Panagia - Umspannwerk",false], // 1 - Panagia - Umspannwerk - garbage3
	   [20469, 8900, east,"1 - Panagia - Stadt",false], // 1 - Panagia - Stadt - garbage5
	   [19343, 9685, east,"1 - Panagia - Antenne",false], // 1 - Panagia - Antenne - garbage bags

	   [17091, 11311, east,"2 - Chalkeia - Steinbruch",true], // 2 - Chalkeia - Steinbruch - bags line
	   [21550, 10928, east,"2 - Chalkeia - Ausgrabungsstätte",true], // 2 - Chalkeia - Ausgrabungsstätte - barrel	  
	   [20251, 11615, east,"2 - Chalkeia - Zentrum",true], // 2 - Chalkeia - Zentrum - barrel greek

	   [20112, 20011, east,"3 - Ioannina - Ausgrabungsstätte",false], // 3 - Ioannina - Ausgrabungsstätte - pallet
	   [20963, 19212, east,"3 - Ioannina - Militärposten",false], // 3 - Ioannina - Militärposten - wash
	   [22188, 18360, east,"3 - Ioannina - Zollstation",false], // 3 - Ioannina - Zollstation - luggage heap 3

	   [25406, 20355, east,"4 - Delfinaki - Kraftwerk",false], // 4 - Delfinaki - Kraftwerk - luggage heap 1
	   [23620, 21076, east,"4 - Delfinaki - Militär",false], // 4 - Delfinaki - Militär - luggage 2
	   [21901, 20942, east,"4 - Delfinaki - Hotelanlage",false], // 4 - Delfinaki - Hotelanlage - luggage 5
	   
	   [9743, 22307, east,"5 - Abdera - Krya Nera",false], // 5 - Abdera - Krya Nera - luggage 4
	   [12206, 22940, east,"5 - Abdera - Tonos Bay",false], // 5 - Abdera - Tonos Bay - oil spill
	   [9468, 20290, east,"5 - Abdera - Zentrum",false], // 5 - Abdera - Zentrum - garbage heap 1
	   
	   [10293, 19074, east,"6 - Galati - Zentrum",false], // 6 - Galati - Zentrum - garbage 2
	   [11539, 20400, east,"6 - Galati - Steinbruch",false], // 6 - Galati - Steinbruch - garbage 3
	   [14194, 22157, east,"6 - Galati - Jagdhaus",false], // 6 - Galati - Jagdhaus - garbage 4
	   
	   [8614, 18246, east,"7 - Syrta - Zentrum",false], // 7 - Syrta - Zentrum - junk pile
	   [5410, 17908, east,"7 - Syrta - Verladestation",false], // 7 - Syrta - Verladestation - tyre
	   [3932, 17349, east,"7 - Syrta - Agios Konstantinos",false], // 7 - Syrta - Agios Konstantinos - tyre1
	   
	   [7172, 16468, east,"8 - Kore - Zentrum",false], // 8 - Kore - Zentrum - tyre line
	   [6763, 15834, east,"8 - Kore - Müllkippe",false], // 8 - Kore - Müllkippe - tyres
	   [4874, 16177, east,"8 - Kore - Negades",false], // 8 - Kore - Negades - garbage bin
	   
	   [3369, 14274, east,"9 - Aggelochori - Villenviertel",false], // 9 - Aggelochori - Villenviertel - trash closed
	   [6465, 13750, east,"9 - Aggelochori - Schaffarm",false], // 9 - Aggelochori - Schaffarm - trash open
	   [3789, 13591, east,"9 - Aggelochori - Zentrum",false], // 9 - Aggelochori - Zentrum - van 2
	   
	   [7571, 12195, east,"10 - Edessa - Farm",false], // 10 - Edessa - Farm - wheelie
	   [7146, 11010, east,"10 - Edessa - Strand",false], // 10 - Edessa - Strand - wheelie 
	   [8215, 10897, east,"10 - Edessa - Kraftwerk",false], // 10 - Edessa - Kraftwerk - wheelie
	   
	   [10040, 11316, east,"11 - Zaros - Villa",false], // 11 - Zaros - Villa - wheelie
	   [9019, 12015, east,"11 - Zaros - Zentrum",false], // 11 - Zaros - Zentrum - wheelie
	   [10627, 12253, east,"11 - Zaros - Therisa",false] //  11 - Zaros - Therisa - wheelie
    ];


// erzeuge für alle oben gelisteten Positionen einen Flaggenmast mit korrekter Flagge vom Server aus.

if (isServer) then 
{
	{
		_x params ["_x", "_y", "_owner", "_name", "_aktiv"];
		
		if (_aktiv) then
		{
			// Objekt erzeugen
			private _flag = createVehicle ["FlagPole_F", [_x, _y],  [], 0, "CAN_COLLIDE"];
			_flag setFlagTexture "\A3\Data_F\Flags\Flag_NATO_CO.paa";

			// notwendige Variablen fuer OPT
			_flag setVariable ["owner", _owner, true];        
			_flag setVariable ["opt_flag", true, true];
		};	
		
	} forEach GVARMAIN(nato_flags_pos);

	{
		_x params ["_x", "_y", "_owner", "_name", "_aktiv"];
		
		if (_aktiv) then
		{
			// Objekt erzeugen
			private _flag = createVehicle ["FlagPole_F", [_x, _y],  [], 0, "CAN_COLLIDE"];
			_flag setFlagTexture "\A3\Data_F\Flags\Flag_CSAT_CO.paa";

			// notwendige Variablen fuer OPT
			_flag setVariable ["owner", _owner, true];
			_flag setVariable ["opt_flag", true, true];
		};
	} forEach GVARMAIN(csat_flags_pos);
};
