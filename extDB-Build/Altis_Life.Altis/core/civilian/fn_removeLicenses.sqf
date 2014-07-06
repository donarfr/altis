/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_gun = false;
		license_civ_rebel = false;
		license_civ_driver = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_rebel = false;
		license_civ_coke = false;
		license_civ_meth = false;
		license_civ_marijuana = false;
		license_civ_heroin = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
			license_civ_driver = false;
			license_civ_truck = false;
			hint "Aufgrund eines Unfalls, welcher einen Todesfall zur Folge hatte, wurde dir dein Fuehrerschein entzogen.";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			license_civ_gun = false;
			hint "Aufgrund eines Mords wurde dir deine Waffenlizenz entzogen.";
		};
	};
};