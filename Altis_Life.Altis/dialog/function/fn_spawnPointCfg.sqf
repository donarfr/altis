/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		[
			["cop_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Flughafen","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Autobahnpolizei","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		[
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_5","Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_6","Rebellen Dorf","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case independent: {
		[
			["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_2","ADAC Basis","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_1","ADAC Flughafen","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};