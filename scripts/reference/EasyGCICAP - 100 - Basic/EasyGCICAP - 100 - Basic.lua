-------------------------------------------------------------------------
-- Test Script
-------------------------------------------------------------------------

local mywing = EASYGCICAP:New("Blue CAP Operations",AIRBASE.Caucasus.Kutaisi,"blue","Blue EWR")
mywing:SetDefaultCAPSpeed(350)
mywing:SetDefaultCAPDirection(270)
mywing:SetDefaultMissionRange(200)

mywing:SetMaxAliveMissions(8)

mywing:AddPatrolPointCAP(AIRBASE.Caucasus.Kutaisi,ZONE:FindByName("Blue Zone 2"):GetCoordinate(),30000,400,90,20)
mywing:AddPatrolPointTanker(AIRBASE.Caucasus.Kutaisi,ZONE:FindByName("Blue Zone Tanker"):GetCoordinate(),20000,280,270,50)

mywing:AddSquadron("Blue Sq1 M2000c","CAP Kutaisi",AIRBASE.Caucasus.Kutaisi,20,AI.Skill.GOOD,102,"ec1.5_Vendee_Jeanne_clean")
mywing:AddTankerSquadron("Blue Tanker","Tanker Ops Kutaisi",AIRBASE.Caucasus.Kutaisi,20,AI.Skill.EXCELLENT,602)

mywing:AddAirwing(AIRBASE.Caucasus.Sukhumi_Babushara,"Blue CAP Sukhumi")
mywing:AddPatrolPointCAP(AIRBASE.Caucasus.Sukhumi_Babushara,ZONE:FindByName("Blue Zone 1"):GetCoordinate(),30000,400,90,20)

mywing:AddSquadron("Blue Sq3 F16","CAP Sukhumi II",AIRBASE.Caucasus.Sukhumi_Babushara,20,AI.Skill.GOOD,402,"JASDF 6th TFS 43-8526 Skull Riders")
mywing:AddSquadron("Blue Sq2 F15","CAP Sukhumi I",AIRBASE.Caucasus.Sukhumi_Babushara,20,AI.Skill.GOOD,202,"390th Fighter SQN")

mywing:AddAcceptZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) ))
mywing:AddAcceptZone(ZONE_POLYGON:New("Red Defense Zone", GROUP:FindByName( "Red Defense Zone" )))
mywing:AddRejectZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))


-- Set up borders on map
local BlueBorder = ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) )
BlueBorder:DrawZone(-1,{0,0,1},1,FillColor,FillAlpha,1,true)
local BlueNoGoZone = ZONE_POLYGON:New("Red Defense Zone", GROUP:FindByName( "Red Defense Zone" ))
BlueNoGoZone:DrawZone(-1,{1,1,0},1,FillColor,FillAlpha,2,true)
local BlueNoGoZone2 = ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) )
BlueNoGoZone2:DrawZone(-1,{1,0,0},1,FillColor,FillAlpha,4,true)


-- Red Airwing
local redwing = EASYGCICAP:New("Red CAP Operations",AIRBASE.Caucasus.Mozdok,"red","Red EWR")
redwing:SetDefaultCAPSpeed(350)
redwing:SetDefaultMissionRange(200)
redwing:SetMaxAliveMissions(7)

redwing:AddSquadron("Red SQ1 SU27","Red CAP Mozdok",AIRBASE.Caucasus.Mozdok,50,AI.Skill.GOOD,70,"Besovets AFB")
redwing:AddPatrolPointCAP(AIRBASE.Caucasus.Mozdok,ZONE:FindByName("Red Zone 3"):GetCoordinate(),21000,350,270,20)

redwing:AddAirwing(AIRBASE.Caucasus.Beslan,"Red CAP Beslan")
redwing:AddSquadron("Red SQ2 MiG29","Red CAP Beslan",AIRBASE.Caucasus.Beslan,20,AI.Skill.GOOD,90)
redwing:AddPatrolPointCAP(AIRBASE.Caucasus.Beslan,ZONE:FindByName("Red Zone 2"):GetCoordinate(),26000,350,90,20)

redwing:AddAirwing(AIRBASE.Caucasus.Nalchik,"Red CAP Nalchik")
redwing:AddSquadron("Red SQ3 SU33","Red CAP Nalchik",AIRBASE.Caucasus.Nalchik,20,AI.Skill.GOOD,30)
redwing:AddPatrolPointCAP(AIRBASE.Caucasus.Nalchik,ZONE:FindByName("Red Zone 1"):GetCoordinate(),30000,400,250,20)

redwing:AddAcceptZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" )))
redwing:AddAcceptZone(ZONE_POLYGON:New("Red Defense Zone", GROUP:FindByName( "Red Defense Zone" )))
redwing:AddRejectZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" )))

