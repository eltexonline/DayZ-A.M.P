**DayZ AMP - Any.Map.Project**
================

Main goal: One DayZ CE based client and server build that will run on any arma2 map as it was released by the creator. DayZ AMP will be updated to current DayZ builds quickly.

DayzAMP private hive servers are able to share the same character database meaning that regardless of which server or map you join you will have all of your gear, thirst, hunger, blood, etc. Please note that changing servers will cause your spawn location to be chosen randomly. When rejoining the same server you will always spawn at your last known position.

**Changes**
========================

Main Features: 
* Dynamic road debris with loot piles.
* Randomly placed vehicle spawns on roads and around buildings.
* Will work on any arma 2 map.
* All fixes and features from DayZ CE https://github.com/R4Z0R49/DayZMod

**Notable Client Changes**
========================

* Added - Missing building loot and zombie spawns for many buildings on custom maps.
* Added - Missing fuel tanks and water well for any map support.
* Removed - All static debris. This is to allow mission placed objects and/or server side dynamic debris system.
* Removed - Auto refuel from Land_Ind_FuelStation_Feed_Ep1 fuel station.
* Removed - Most arma2oa.RPT log spam client side related to zombie LOS checks and loot spawns.
* Change - Allow dayz_maxLocalZombies to be set from the init.sqf mission file server side. If not set reverts to default 40.

**Server Side Changes**
========================
* Added - Built-in dynamic vehicle spawn system randmomly placed on roads and around buildings.
* Added - Player spawning in random location if joining from another instance in the private hive.
* Added - Dynamic road debris with loot piles. Control how many spawn with "MaxDynamicDebris" variable inside the mission init.sqf.
* Added - to mission init.sqf variables "spawnShoremode" 1 for on shore 0 for anywhere and "spawnArea" to control size of spawn area.
* Added - to mission init.sqf variables "MaxHeliCrashes" to control how many helicopters spawn.
* Added - to mission init.sqf variables "dayz_MapArea" master control for size of area for debris and vehicle spawns.
* Change - Allow setting of dayz_maxLocalZombies inside mission init.sqf otherwise default to 40.

**Current Map Support**
========================

* Chenarus
* Takistan
* Zargabad
* Utes
* Woodland_ACR
* Bootcamp_ACR
* Shapur_BAF
* Isla Duala
* Dingor
* Lingor

**Installation Notes**
=======================

Place @DayZ_AMP folder into your "arma 2 operation arrowhead" folder and launch Arma2 OA latest beta with "@DayZ_AMP;" in your mod line.

**Custom Maps**
=======================

* Lingor Island Download link: http://www.icebreakr.info/lingor/download/
	* Required mods: @DayZ_AMP;@lingor;
* Dingor Island Download link: http://www.icebreakr.info/dingor/download/
	* Required mods: @DayZ_AMP;@lingor;@dingor;
* Isla Duala Island Download link: http://www.icebreakr.info/isla-duala/download/
	* Required mods: @DayZ_AMP;@duala;

__________________________________________________________


Thanks to Rocket and all the DayZ CE devs!

***� This setup is based on Dayz CE 1.7.4 - https://github.com/R4Z0R49/DayZMod �***
