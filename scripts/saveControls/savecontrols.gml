function saveControls() {
	var filename, _map;

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


	ds_map_secure_save(_map, filename);
	ds_map_destroy(_map);



}
