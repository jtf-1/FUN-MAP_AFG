env.info( "[JTF-1] staticranges_data" )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- STRIKE MISSION SETTINGS FOR MIZ
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- This file MUST be loaded AFTER missionstrike.lua
--
-- These values are specific to the miz and will override the default values in MISSIONSTRIKE.default
--

-- Error prevention. Create empty container if module core lua not loaded.
if not MISSIONSTRIKE then 
	MISSIONSTRIKE = {}
	MISSIONSTRIKE.traceTitle = "[JTF-1 MISSIONSTRIKE] "
	_msg = self.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
	-- EXIT MODULE DATA
	return
end

----------------------------------
--- Strike Attack Mission Data ---
----------------------------------

--MISSIONSTRIKE.drawZones = true -- If true, draw mission zones. default is false

MISSIONSTRIKE.enums.region.qeshm = "Qeshm Island"

--- MISSIONSTRIKE.mission table 
-- @type MISSIONSTRIKE.mission
-- @field #string striketype type of strike; Airfield, Factory, Bridge, Communications, C2
-- @field #string strikeregion Region in which mission is located 
-- @field #string strikename Friendly name for the location used in briefings, menus etc. Currently the same as the key, but will probably change
-- @field #string strikeivo "in the vacinity of" ("AFB" if airfield, "[TOWN/CITY]" other targets)
-- @field #string strikecoords LatLong
-- @field #string strikemission mission description
-- @field #string strikethreats threats description
-- @field #string ME zone at center of strike location
-- @field #table striketargets static objects to be respawned for object point strikes (Factory, refinery etc)
-- @field #table medzones ME zones in which medium assets will be spawned. (AAA batteries, vehicle groups, infantry groups etc)
-- @field #string loc ME defence zone at location
-- @field #boolean is_open tracks whether defence zone is occupied
-- @field #table ME zones in which small assets will be spawned
-- @field #string loc ME defence zone at location
-- @field #boolean is_open tracks whether defence zone is occupied
-- @field #table defassets max number of each defence asset. sum of zone types used must not exceed number of zone type available
-- @field #number sam uses medzones
-- @field #number aaa uses smallzones
-- @field #number manpads uses smallzones
-- @field #number armour uses medzones
-- @field #table spawnobjects table holding names of the spawned objects relating the mission
-- @field #boolean is_open mission status. true if mission is avilable for spawning. false if it is in-progress

-- XXX: MISSIONSTRIKE.mission


MISSIONSTRIKE.missions = { -- TableStrikeAttack

	------------ AIRFIELD ALPHA ------------
--[[ 	{ -- Fujairah Intl Airfield-Alpha
		striketype = MISSIONSTRIKE.enums.striketype.airfield,
        strikeregion = MISSIONSTRIKE.enums.region.alpha,
		strikename = "Fujairah",
		strikeivo = "AFB",
		strikemission = MISSIONSTRIKE.enums.strikemission.airfield, -- text mission description
		strikezone = "ZONE_FujairahStrike",
		striketargetprefix = "TARGET_FUJAIRAH",
		zoneprefix = {
			{class = "small", prefix = "ZONE_FujairahSmall"},
			{class = "medium", prefix = "ZONE_FujairahMed"},
		},
		defassets = {
			sam = 2,
			aaa = 4,
			manpad = 2,
			armour = 3,
		},
		spawnobjects = {},
		is_open = true,
	},-- End Fujairah ]]

	------------ BRIDGE BRAVO------------
--[[ 	{ -- EJ19 Bridge-North
		striketype = MISSIONSTRIKE.enums.striketype.bridge,
        strikeregion = MISSIONSTRIKE.enums.region.north,                            
		strikename = "EJ19",
		strikeivo = "Krivenkovskoe",
		strikemission = MISSIONSTRIKE.enums.strikemission.bridge.rail, -- text mission description
		--strikethreats = "RADAR SAM, I/R SAM, AAA, LIGHT ARMOUR",
		strikezone = "ZONE_EJ19Strike",
		striketargetprefix = "TARGET_EJ19",
		zoneprefix = {
			{class = "small", prefix = "ZONE_EJ19Small"},
			{class = "medium", prefix = "ZONE_EJ19Med"},
		},
		defassets = { 
			sam = 2, 
			aaa = 4, 
			manpad = 1, 
			armour = 2, 
		},
		spawnobjects = {},
		is_open = true,
	},-- End EJ19 ]]

	------------ CAMP ------------
--[[ 	{ -- CAMP REGION BRAVO
		striketype = MISSIONSTRIKE.enums.striketype.camp,
        strikeregion = MISSIONSTRIKE.enums.region.bravo,                            
		strikename = "Add",
		strikeivo = "Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.camp, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_camp_b-1",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-2",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-3",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-4",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-5",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-6",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-7",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-8",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-9",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-10",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-11",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-12",
				is_open = true 
			},
			{ 
				strikezone = "ZONE_camp_b-13",
				is_open = true 
			},
		},
	},-- End CAMP REGION BRAVO ]]

	------------ CONVOY ------------
	-- b-1 NR6748
	-- b-2 NR9856
	-- b-3 NR9322
	-- b-4 DP2184
	-- b-5 NR8259
	-- b-6 PR0630
	-- b-7 PR2058
	-- b-8 NQ4506
	-- b-9 PQ0172
	-- b-10 NR9407
	-- b-11 QQ2193
	-- b-12 PR9978 KAJAKI DAM
	-- b-13 PR4917
	-- b-14 PQ7991
	-- b-15 NP9989
	-- b-16 PQ2991
	{ -- Convoy-BRAVO
		striketype = MISSIONSTRIKE.enums.striketype.convoy,
        strikeregion = MISSIONSTRIKE.enums.region.bravo,                            
		strikename = "Add",
		strikeivo = "Convoy Mission",
		strikemission = MISSIONSTRIKE.enums.strikemission.convoy, -- text mission description
		striketargets = {
			{ 
				strikezone = "ZONE_b-1",
				endzone = "ZONE_b-2",
				destname = "NR9856",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-1",
				endzone = "ZONE_b-3",
				destname = "NR9322",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-1",
				endzone = "ZONE_b-4",
				destname = "DP2184",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-1",
				endzone = "ZONE_b-5",
				destname = "NR8259",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-3",
				endzone = "ZONE_b-7",
				destname = "PR2058",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-3",
				endzone = "ZONE_b-4",
				destname = "DP2184",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-8",
				endzone = "ZONE_b-9",
				destname = "PQ0172",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-9",
				endzone = "ZONE_b-10",
				destname = "NR9407",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-3",
				endzone = "ZONE_b-10",
				destname = "NR9407",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-9",
				endzone = "ZONE_b-11",
				destname = "QQ2193",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-11",
				endzone = "ZONE_b-12",
				destname = "PR9978 KAJAKI DAM",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-9",
				endzone = "ZONE_b-12",
				destname = "PR9978 KAJAKI DAM",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-13",
				endzone = "ZONE_b-12",
				destname = "PR9978 KAJAKI DAM",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-14",
				endzone = "ZONE_b-12",
				destname = "PR9978 KAJAKI DAM",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-13",
				endzone = "ZONE_b-14",
				destname = "PQ7991",
				is_open = true
			},
			{ 
				strikezone = "ZONE_b-8",
				endzone = "ZONE_b-9",
				destname = "PQ0172",
				is_open = true
			},
		},
		options = {
			MISSIONSTRIKE.enums.convoy.supply,
			MISSIONSTRIKE.enums.convoy.armoured,
		},
	},-- End Convoy-BRAVO

}

-- Start Strike Attack Module
if MISSIONSTRIKE.Start then
	_msg = MISSIONSTRIKE.traceTitle .. "Call Start() from missionstrike_data."
	BASE:T(_msg)
	MISSIONSTRIKE:Start()
end

-- END STRIKE ATTACK DATA