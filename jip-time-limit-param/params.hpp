class JipTimeLimitParam {
  title = "Put JIPs into spectator mode after this much time has passed in the mission:";
  values[] = { 60, 120, 180, 240, 300, 600, -1 };
  texts[] = { "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes", "10 minutes", "Never" };
  default = 600;
  function = "JipTimeLimitParam_fnc_SetJipTimeLimit";
  isGlobal = 1;
};
