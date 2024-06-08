function saveControls() {
	var i, filename, _map;

	filename = world.gameCaption+"controls";
	_map = ds_map_create();

	_map[? "leftKey"] = world.leftKey;
	_map[? "rightKey"] = world.rightKey;
	_map[? "upKey"] = world.upKey;
	_map[? "downKey"] = world.downKey;
	_map[? "shootKey"] = world.shootKey;
	_map[? "jumpKey"] = world.jumpKey;
	_map[? "skipKey"] = world.skipKey;
	_map[? "gameRestart"] = world.gameRestart;
	_map[? "forcedSave"] = world.forcedSave;
	_map[? "forcedLoad"] = world.forcedLoad;
	
	// Macro
	_map[? "macro_num"] = world.macro_num;
	if (ds_exists(world.map_macro_key, ds_type_map) && ds_exists(world.map_macro, ds_type_map)) {
		for(i=0; i<world.macro_num; i+=1) {
			if (ds_map_exists(world.map_macro_key, "macro" + string(i)) && ds_map_exists(world.map_macro, "macro" + string(i))) {
				_map[? "map_macro_key" + string(i)] = world.map_macro_key[? "macro" + string(i)];
				_map[? "map_macro" + string(i)] = world.map_macro[? "macro" + string(i)];
			}
		}
	}

	ds_map_secure_save(_map, filename);
	ds_map_destroy(_map);
}
