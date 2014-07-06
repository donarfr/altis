/*
	File: fn_giveDiff.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	??A?SD?ADS?A
*/
private["_unit","_item","_val","_from","_bool"];
_unit = _this select 0;
if(_unit != player) exitWith {};
_item = _this select 1;
_val = _this select 2;
_from = _this select 3;
_bool = if(count _this > 4) then {true} else {false};
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;

if(_bool) then
{
	if(([true,_item,(parseNumber _val)] call life_fnc_handleInv)) then
	{
		hint format["Du hast versucht %1 %2 %3 zu geben, aber das Inventar war voll.",_from getVariable["realname",name _from],_val,_type];
	};
}
	else
{
	if(([true,_item,(parseNumber _val)] call life_fnc_handleInv)) then
	{
		hint format["%1 gab %2 %3 zurueck, weil er dafuer keinen Platz hatte.",_from getVariable["realname",name _from],_val,_type];
	};
};