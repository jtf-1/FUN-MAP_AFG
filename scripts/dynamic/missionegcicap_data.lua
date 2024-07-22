env.info( "[JTF-1] MISSIONEGCICAP_data.lua" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- MISSION AUTO CAP SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER MISSIONEGCICAP.lua
--
-- These values are specific to the miz
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONEGCICAP then 
	MISSIONEGCICAP = {}
	MISSIONEGCICAP.traceTitle = "[JTF-1 MISSIONEGCICAP] "
	_msg = self.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	-- EXIT MODULE DATA
	return
end

----------------------------------
--- MISSION AUTO CAP Data ---
----------------------------------

MISSIONEGCICAP.debug = {
    traceOn = false, -- if true, activate module tracing
    traceLevel = 3, -- depth for tracing methods
    classes = {
        "EASYGCICAP",
    }
}

MISSIONEGCICAP.zones = {
    redBorder = "border_RED",
    blueBorder = "border_BLUE",
    patrolCap_echo = "ZONE_redcap_echo",
    patrolCap_delta = "ZONE_redcap_delta",
    patrolCap_foxtrot = "ZONE_redcap_foxtrot",
    patrolAwacs_echo = "ZONE_redawacs_echo",
}
    
MISSIONEGCICAP.patrolPoints = { --AddPatrolPointCAP(AirbaseName, Coordinate, Altitude, Speed, Heading, LegLength)
    patrolCapEcho = {
        type = "cap", -- cap, tkr, awacs
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Shindand"],
        zoneName = MISSIONEGCICAP.zones.patrolCap_echo,
        Altitude = 25000,
        Speed = 300,
        Heading = 50,
        LegLength = 40
    },
    patrolCapDelta = {
        type = "cap", -- cap, tkr, awacs
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Nimroz"],
        zoneName = MISSIONEGCICAP.zones.patrolCap_delta,
        Altitude = 25000,
        Speed = 300,
        Heading = 204,
        LegLength = 40
    },
    patrolCapFoxtrot = {
        type = "cap", -- cap, tkr, awacs
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Chaghcharan"],
        zoneName = MISSIONEGCICAP.zones.patrolCap_foxtrot,
        Altitude = 25000,
        Speed = 300,
        Heading = 62,
        LegLength = 40
    },
    patrolAwacsEcho = {
        type = "awacs", -- cap, tkr, awacs
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Shindand"],
        zoneName = MISSIONEGCICAP.zones.patrolAwacs_echo,
        Altitude = 25000,
        Speed = 300,
        Heading = 223,
        LegLength = 70
    },
}

-- cap - TemplateName, SquadName, AirbaseName, AirFrames, Skill, Modex, Livery
-- tkr - TemplateName, SquadName, AirbaseName, AirFrames, Skill, Modex, Livery, Frequency, Modulation, TACAN
-- awacs - TemplateName, SquadName, AirbaseName, AirFrames, Skill, Modex, Livery, Frequency, Modulation
MISSIONEGCICAP.squadrons = { 
    capEcho = {
        type = "cap", -- cap, tkr, awacs
        TemplateName = "CAP_MIG29A", 
        SquadName =  "sqnEchoMIG29A", 
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Shindand"], 
        AirFrames = 20, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil,
    },
    capFoxtrot = {
        type = "cap", -- cap, tkr, awacs
        TemplateName = "CAP_MIG29A", 
        SquadName =  "sqnCapFoxtrotMIG29A", 
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Chaghcharan"], 
        AirFrames = 10, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil,
    },
    capDelta = {
        type = "cap", -- cap, tkr, awacs
        TemplateName = "CAP_MIG21", 
        SquadName =  "sqnCapDeltaMIG21", 
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Nimroz"], 
        AirFrames = 10, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil,
    },
    awacsEcho = {
        type = "awacs", -- cap, tkr, awacs
        TemplateName = "AWACS_A50", 
        SquadName =  "sqnAwacsEchoA50", 
        AirbaseName = MISSIONEGCICAP.airbase.Afghanistan["Shindand"], 
        AirFrames = 5, 
        Skill = nil, 
        Modex = nil, 
        Livery = nil,
        Frequency = nil,
        Modulation = nil,
    },
}

-- first Wing is added used for the master object. Further wings will be added to the master.
MISSIONEGCICAP.wings = { --New(Alias, AirbaseName, Coalition, EWRName)
    Red_CAP_Ops = {
        alias = "Red CAP Ops",
        airBaseName = MISSIONEGCICAP.airbase.Afghanistan["Shindand"],
        coalition = "red",
        ewrPrefix = "ewr_red",
        subwings = {
            CAPEcho = {
                alias = "CAP Echo", 
                airBaseName = MISSIONEGCICAP.airbase.Afghanistan["Nimroz"],
            },
            CAPFoxtrot = {
                alias = "CAP Foxtrot", 
                airBaseName = MISSIONEGCICAP.airbase.Afghanistan["Chaghcharan"],
            },
        },
        acceptZones = {
            MISSIONEGCICAP.zones.redBorder,
        },
        rejectZones = {
            MISSIONEGCICAP.zones.blueBorder,
        },
        patrolPoints = {
            MISSIONEGCICAP.patrolPoints.patrolCapEcho,
            MISSIONEGCICAP.patrolPoints.patrolCapDelta,
            MISSIONEGCICAP.patrolPoints.patrolCapFoxtrot,
            MISSIONEGCICAP.patrolPoints.patrolAwacsEcho,
        },
        squadrons = {
            MISSIONEGCICAP.squadrons.capEcho,
            MISSIONEGCICAP.squadrons.capDelta,
            MISSIONEGCICAP.squadrons.capFoxtrot,
            MISSIONEGCICAP.squadrons.awacsEcho,
        },
        tankerSquadrons = {},
        awacsSquadrons = {},
        maxAliveMissions = 10,
        engageRange = 75,
        debug = false, -- if true actrivate debug log output for this MASTER WING
        Monitor = false -- if true activate debug monitor output this MASTER WING
    }
}

-- Start AUTO CAP Module
if MISSIONEGCICAP.Start then
	_msg = MISSIONEGCICAP.traceTitle .. "Call Start() from MISSIONEGCICAP_data."
	BASE:T(_msg)
	MISSIONEGCICAP:Start()
end

-- END MISSION AUTO CAP DATA