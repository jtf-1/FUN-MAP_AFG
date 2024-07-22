--------------------------------------------
--- Support Aircraft Defined in this file
--------------------------------------------

-- **NOTE**: SUPPORTAIRCRAFT.LUA MUST BE LOADED BEFORE THIS FILE IS LOADED!

-- This file contains the config data specific to the miz in which it will be used.
-- All functions and key values are in SUPPORTAIRCRAFT.LUA, which should be loaded first
-- supportaircraft_data.lua 

-- Error prevention. Create empty container if SUPPORTAIRCRAFT.LUA is not loaded or has failed.
if not SUPPORTAC then 
    SUPPORTAC = {}
end

-- Support aircraft missions. Each mission block defines a support aircraft mission. Each block is processed
-- and an aircraft will be spawned for the mission. When the mission is cancelled, eg after RTB or if it is destroyed,
-- a new aircraft will be spawned and a fresh AUFTRAG created.
SUPPORTAC.mission = {
    -- {
    --   name = "ARWK", -- text name for this support mission. Combined with this block's index and the mission type to define the group name on F10 map
    --   category = SUPPORTAC.category.tanker, -- support mission category. Used to determine the auftrag type. Options are listed in SUPPORTAC.category
    --   type = SUPPORTAC.type.tankerBoom, -- type defines the spawn template that will be used
    --   zone = "ARWK", -- ME zone that defines the start waypoint for the spawned aircraft
    --   callsign = CALLSIGN.Tanker.Arco, -- callsign under which the aircraft will operate
    --   callsignNumber = 1, -- primary callsign number that will be used for the aircraft
    --   tacan = 35, -- TACAN channel the ac will use
    --   tacanid = "ARC", -- TACAN ID the ac will use. Also used for the morse ID
    --   radio = 276.5, -- freq the ac will use when on mission
    --   flightLevel = 160, -- flight level at which to spwqan aircraft and at which track will be flown
    --   speed = 315, -- IAS when on mission
    --   heading = 94, -- mission outbound leg in degrees
    --   leg = 40, -- mission leg length in NM
    --   fuelLowThreshold = 30, -- lowest fuel threshold at which RTB is triggered
    --   activateDelay = 5, -- delay, after this aircraft has been despawned, before new aircraft is spawned
    --   despawnDelay = 10, -- delay before this aircraft is despawned
    -- },
    {
      name = "ARNP", -- TANKER
      category = SUPPORTAC.category.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARNP",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 1,
      tacan = 116,
      tacanid = "SHL",
      radio = 317.6,
      flightLevel = 240,
      speed = 315,
      heading = 205 ,
      leg = 40,
      unlimitedFuel = true,
    },
    {
      name = "ARNP", -- TANKER
      category = SUPPORTAC.category.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARNP",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 1,
      tacan = 106,
      tacanid = "TEX",
      radio = 317.65,
      flightLevel = 270,
      speed = 315,
      heading = 205,
      leg = 40,
      unlimitedFuel = true,
    },
    {
      name = "ARPR", -- TANKER
      category = SUPPORTAC.category.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARPR",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 2,
      tacan = 119,
      tacanid = "SHL",
      radio = 317.7,
      flightLevel = 240,
      speed = 315,
      heading = 215,
      leg = 40,
      unlimitedFuel = true,
    },
    {
      name = "ARPR", -- TANKER
      category = SUPPORTAC.category.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARPR",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 2,
      tacan = 120,
      tacanid = "TEX",
      radio = 317.75,
      flightLevel = 270,
      speed = 315,
      heading = 215,
      leg = 40,
      unlimitedFuel = true,
    },
    {
      name = "ARTB", -- TANKER
      category = SUPPORTAC.category.tanker,
      type = SUPPORTAC.type.tankerProbe,
      zone = "ARTB",
      callsign = CALLSIGN.Tanker.Shell,
      callsignNumber = 3,
      tacan = 115,
      tacanid = "SHL",
      radio = 317.5,
      flightLevel = 240,
      speed = 315,
      heading = 238,
      leg = 40,
      unlimitedFuel = true,
    },
    {
      name = "ARTB", -- TANKER
      category = SUPPORTAC.category.tanker,
      type = SUPPORTAC.type.tankerBoom,
      zone = "ARTB",
      callsign = CALLSIGN.Tanker.Texaco,
      callsignNumber = 1,
      tacan = 105,
      tacanid = "TEX",
      radio = 317.55,
      flightLevel = 270,
      speed = 315,
      heading = 238,
      leg = 40,
      unlimitedFuel = true,
    },
    {
      name = "AWACSBLUE", -- AWACS
      category = SUPPORTAC.category.awacs,
      type = SUPPORTAC.type.awacsE3a,
      zone = "AWACSBLUE",
      callsign = CALLSIGN.AWACS.Magic,
      callsignNumber = 1,
      tacan = nil,
      tacanid = nil,
      radio = 367.575,
      flightLevel = 310,
      speed = 400,
      heading = 222,
      leg = 70,
      activateDelay = 5,
      despawnDelay = 10,
      fuelLowThreshold = 15,
      unlimitedFuel = true,
    },
    -- {
    --   name = "AWACSRED",
    --   category = SUPPORTAC.category.awacs,
    --   type = SUPPORTAC.type.awacsA50,
    --   zone = "ZONE_redawacs_echo",
    --   callsign = "666",
    --   callsignNumber = 1,
    --   tacan = nil,
    --   tacanid = nil,
    --   radio = 266,
    --   flightLevel = 360,
    --   speed = 400,
    --   heading = 230,
    --   leg = 70,
    --   activateDelay = 5,
    --   despawnDelay = 10,
    --   fuelLowThreshold = 15,
    --   coalition = coalition.side.RED,
    --   countryid = country.id.RUSSIA,
    --   unlimitedFuel = true,
    -- },
}

-- call the function that initialises the SUPPORTAC module
if SUPPORTAC.Start ~= nil then
  _msg = "[SUPPORTAC] SUPPORTAIRCRAFT_DATA - call SUPPORTAC:Start()."
  BASE:I(_msg)
  SUPPORTAC:Start()
else
  _msg = "[SUPPORTAC] function SUPPORTAC.Start() is missing!"
  BASE:E(_msg)
end
