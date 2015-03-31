if (!hasInterface) exitWith {};

_jipTime = if ( isNil "JipTimeLimit_var_JipTime" ) then { 
  getNumber (missionConfigFile >> "Modules" >> "JipTimeLimit" >> "JipTimeLimit_var_JipTime")
} else { 
  JipTimeLimit_var_JipTime
};

if ( time > _jipTime && _jipTime != -1 ) then {
  player setDamage 1;
};
