startLoadingScreen ["","DayZ_loadingScreen"];
/*	
	INITILIZATION
*/
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 4;	//The instance
hiveInUse	=	true;
initialized = false;
dayz_previousID = 0;

// AMP config
spawnShoremode = 0; // Default = 1 (on shore)
spawnArea= 500; // Default = 1500
MaxHeliCrashes= 3; // Default = 5
MaxVehicleLimit = 50; // Default = 50
MaxDynamicDebris = 100; // Default = 100
dayz_MapArea = 8000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 40

call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if ((!isServer) && (isNull player) ) then
{
waitUntil {!isNull player};
waitUntil {time > 3};
};

if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
  waitUntil {time > 3};
};

if (isServer) then {
	//Run the server monitor
	hiveInUse = true;
	_serverMonitor = [] execVM "\z\addons\dayz_server\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	0 cutText [(localize "STR_AUTHENTICATING"), "BLACK FADED",60];
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
};