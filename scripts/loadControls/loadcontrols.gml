function loadControls() {
	var filename, _map;

	filename = gameCaption+"controls";

	if (file_exists(filename)) {
	    _map = ds_map_secure_load(filename);
		
	    if (_map[? "leftKey"] != undefined)
	        world.leftKey = _map[? "leftKey"];
	    if (_map[? "rightKey"] != undefined)
	        world.rightKey = _map[? "rightKey"];
	    if (_map[? "upKey"] != undefined)
	        world.upKey = _map[? "upKey"];
	    if (_map[? "downKey"] != undefined)
	        world.downKey = _map[? "downKey"];
	    if (_map[? "shootKey"] != undefined)
	        world.shootKey = _map[? "shootKey"];
	    if (_map[? "jumpKey"] != undefined)
	        world.jumpKey = _map[? "jumpKey"];
	    if (_map[? "skipKey"] != undefined)
	        world.skipKey = _map[? "skipKey"];
	    if (_map[? "gameRestart"] != undefined)
	        world.gameRestart = _map[? "gameRestart"];
	    if (_map[? "forcedSave"] != undefined)
	        world.forcedSave = _map[? "forcedSave"];
	    if (_map[? "forcedLoad"] != undefined)
	        world.forcedLoad = _map[? "forcedLoad"];
		
	    ds_map_destroy(_map);
	}



}
