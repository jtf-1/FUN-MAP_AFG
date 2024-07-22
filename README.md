Welcome to the JTF-1 Fun Map!
Please make yourself aware of the following information:

ATIS
====

- Kandahar UHF 258.200
- Camp Bastion VHF 121.925

AWACS
=====

Magic 1-1 367.575 (Track PR-PQ)

TANKERS
=======

Track ARNP;
IP WP2, ZONE ALPHA
- Shell 1-1 [KC135MPRS] 116Y ,317.6, FL240
- Texaco 1-1 [KC-135] 106Y, 317.65, FL270

Track ARPR;
IP WP3, ZONE BRAVO
- Shell 2-1 [KC135MPRS] 119Y ,317.7, FL240
- Texaco 2-1 [KC-135] 120Y, 317.75, FL270

Track ARTB;
IP WP4, ZONE CHARLIE
- Shell 3-1 [KC135MPRS] 115Y, 317.5, FL240
- Texaco 3-1 [KC-135] 105Y, 317.55, FL270

AWACS RED
=========

- 305.325AM

ON DEMAND GROUND ATTACK MISSIONS
================================

Insurgent Camp Attack:  
----------------------

Strike missions are available, on-demand, via the F-10 menu. Camps can be spawned at a series of random locations, East of the AFG border. A mission brief will be displayed with the location of the camp (nearest town and coordinates). A mark, with a label listing the strike name and its coordinates, will be placed on the F10 map at the strike location. A menu option is also available to remove the oldest spawned insurgent camp.

Convoy Attack: 
--------------

Strike missions against enemy convoys are available, on-demand, via the F-10 menu. Options are available to spawn both armoured and soft convoys, at a series of random locations within the Central and Western portions of the map. A mission brief will be displayed indicating the last known location of the convoy, its anticipated destination and the threats within it. A mark, with a label listing the strike name and its coordinates, will be placed on the F10 map at the strike location.

Strategic Strike Attacks: 
-------------------------

Strike missions are available, on demand, via the F10 menu. Air defences can be spawned at a series of target locations North of the Russian border. A mission brief will be displayed confirming the name of the chosen location, the coordinates of the main target center, and the anticipated threats. A mark, with a label listing the strike name and its coordinates, will be placed on the F10 map at the strike location. A menu option is also available to remove the mission after it has been spawned. The following target categories are selectable;

- Airfield
- Factory
- Bridge

RANGE COMPLEXES
===============

Range Control common: 250.000MHz

- WIP

Ranges are script scored and have an F10 menu system you can use to manage them. A range instructor is available at each range to provide hit assessment. 

Bomb targets are scored on the proximity of the last round to the target. Smoke will be used to mark the round's impact.

Strafe Pits, where available, are configured with two targets. Aircraft must be below 3000ft AGL and within 500ft either side of the inbound heading to the target to avoid a foul pass. Rounds fired after the foul line will not count.


MAP MARK SPAWNING
=================

WIP - Use F10 map marks to spawn BVR opponents or ground threats anywhere on the map. Add mark to map then type the CMD syntax below in the map mark text field. The command will execute on mouse-clicking out of the text box.

NOTE: currently no syntax error feedback if you get it wrong.


Airspawn syntax
---------------

CMD ASPAWN: [type][, [option]: [value]][...]


Airspawn Types
--------------

- F4
- SU27
- MIG29
- SU25
- MIG23


Airspawn Options
----------------

- HDG: [degrees] - default 000
- ALT: [flight level] - default 280 (28,000ft)
- DIST:[nm] - default 0 (spawn on mark point)
- NUM: [1-4] - default 1
- SPD: [knots] - default 425
- SKILL: [AVERAGE, GOOD, HIGH, EXCELLENT, RANDOM] - default AVERAGE
- TASK: [CAP] - default NOTHING


Example
-------

CMD ASPAWN: MIG29, NUM: 2, HDG: 180, SKILL: GOOD

Will spawn 2x MiG29 at the default speed of 425 knots, with heading 180 and skill level GOOD.


Groundspawn Syntax
------------------

CMD GSPAWN: [groundspawn type][, [option]: [value]][...]


Groundspawn Types
-----------------

- SA2
- SA3
- SA6
- SA10
- SA11
- SA15


Groundspawn Options
----------------

- ALERT: [GREEN, AUTO, RED] - default RED 
- SKILL: [AVERAGE, GOOD, HIGH, EXCELLENT, RANDOM] - default AVERAGE


Example
-------

CMD GSPAWN: SA6, ALERT: GREEN, SKILL: HIGH

Will spawn an SA6 Battery on the location of the map mark, in alert state GREEN and with skill level HIGH.


Delete Spawn Syntax
-------------------

CMD DELETE: [object type] [group name from F10 map]


Delete Spawn Object Types
-------------------------

- GROUP


Example
-------

CMD DELETE: GROUP MIG29A#001

Will remove the spawned group named MIG29A#001


List Spawn Object Types
-----------------------

CMD [SPAWN COMMAND] OPTIONS


Example
-------

CMD ASPAWN: OPTIONS

Will list spawnable AIRSPAWN object types


Cut-n-Paste Command Examples
----------------------------

CMD GSPAWN: SA8, ALERT: RED, SKILL: HIGH

CMD GSPAWN: SA15, ALERT: RED, SKILL: HIGH

CMD ASPAWN: MQ9, ALERT: RED, SKILL: HIGH, ALT: 120

CMD ASPAWN: WINGLOON, ALERT: RED, SKILL: HIGH, ALT: 120

CMD ASPAWN: MIG29, NUM: 2, HDG: 90, SKILL: GOOD, ALT: 280, TASK: CAP

CMD DELETE: GROUP BVR_MIG29A#001





ATIS Kandahar 242.675, TRAFFIC 251, VOICE WIN:Zira
ATIS Camp Bastion 121.925, TRAFFIC 251, VOICE WIN:David