private ["_unit", "_mode"];

_unit = _this select 0;
_mode = if (isNil "AntiLoot_var_Mode") then {
  getNumber (missionConfigFile >> "Modules" >> "AntiLoot" >> "Settings" >> "AntiLoot_var_Mode")
} else {
  AntiLoot_var_Mode
}

// Mode: 1 = remove weapons only, 2 = remove everything
switch (_mode) do {
  case 1: {
    removeAllWeapons _unit;
  };
  case 2: {
    removeAllWeapons _unit;
    removeAllItems _unit;
    _unit unlinkItem "ItemGPS";
    _unit unlinkItem "ItemMap";
    _unit unlinkItem "ItemRadio";
    _unit unlinkItem "ItemWatch";
    _unit unlinkItem "ItemCompass";
    _unit unlinkItem ( hmd _unit );
  };
};
