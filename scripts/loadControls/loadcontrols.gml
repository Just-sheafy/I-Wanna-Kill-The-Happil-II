function loadControls() {
	var i, j, num, filename, _map;

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
	    if (_map[? "macro_num"] != undefined) {
	        num = _map[? "macro_num"];
			j = 0;
			world.macro_num = 0;
			
			if (!ds_exists(world.map_macro_key, ds_type_map)) world.map_macro_key = ds_map_create();
			else ds_map_clear(world.map_macro_key);
			if (!ds_exists(world.map_macro, ds_type_map)) world.map_macro = ds_map_create();
			else ds_map_clear(world.map_macro);
			
			for(i=0; i<num; i+=1) {
				if (_map[? "map_macro_key" + string(j)] != undefined && _map[? "map_macro" + string(j)] != undefined) {
					world.map_macro_key[? "macro" + string(j)] = _map[? "map_macro_key" + string(j)];
					world.map_macro[? "macro" + string(j)] = _map[? "map_macro" + string(j)];
					j += 1;
					world.macro_num += 1;
				}
			}
		}
		
	    ds_map_destroy(_map);
	}



}
