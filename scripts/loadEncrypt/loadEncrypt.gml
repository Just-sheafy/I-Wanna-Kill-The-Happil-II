function loadEncrypt() {
	/*
	var temp, i, fin;

	if file_exists(world.gameCaption+"save") {
	fin = file_bin_open(world.gameCaption+"save", 0);

	//Follow saveEncrypt structure EXACTLY. If any equations are changed there,
	//account for that here.

	if !instance_exists(player) {instance_create_depth(0, 0, -2, player);}

	b[0] = file_bin_read_byte(fin);
	b[1] = file_bin_read_byte(fin);
	b[2] = file_bin_read_byte(fin);
	
	temp = b[0] + 256*b[1] + b[2]*sqr(256);
	if (room_exists(temp)) room = temp;

	b[0] = file_bin_read_byte(fin);
	b[1] = file_bin_read_byte(fin);

	player.x = b[0] + 256*b[1];

	b[0] = file_bin_read_byte(fin);
	b[1] = file_bin_read_byte(fin);

	player.y = b[0] + 256*b[1];

	player.Gravity = file_bin_read_byte(fin);

	player.GravityH = file_bin_read_byte(fin);

	file_bin_close(fin);

	player.noGravity = false;

	player.maxSpeed = 3;
	} else {
	    //New game
	    room_goto(Stage01A);
	}

	with(world) {
	    musicFunctions();
	}*/
	
	var ID, num, filename, _map, moved = false;
	var load_data_ftn;
	
	load_data_ftn = function(__filename, __ID) {
		var num, num2, prevent, _map;
		var prevent_ftn, num_ftn;
		
		prevent_ftn = function(__map, __text, __ID, __num2, __prevent) {
			return __prevent + __map[? __text]*((__ID div power(10, __num2)) mod 10);
		};
		num_ftn = function(__ID, __num2) {
			if (power(10, __num2+1) <= __ID) return __num2 + 1;
			else return 0;
		};
		
		if (file_exists(__filename)) {
		    _map = ds_map_secure_load(__filename);
			prevent = 0;
			num2 = 0;
    
		    if (_map[? "room0"] != undefined and _map[? "room1"] != undefined and
		        _map[? "room2"] != undefined) {
		        num = _map[? "room2"]*(123*456)+_map[? "room1"]*123+_map[? "room0"];
				prevent = prevent_ftn(_map, "room0", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "room1", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "room2", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
		    }
    
		    if (_map[? "player_x0"] != undefined and _map[? "player_x1"] != undefined) {
				prevent = prevent_ftn(_map, "player_x0", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "player_x1", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
		    }
		    if (_map[? "player_y0"] != undefined and _map[? "player_y1"] != undefined) {
				prevent = prevent_ftn(_map, "player_y0", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "player_y1", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
		    }
    
		    if (_map[? "Gravity"] != undefined) {
				prevent = prevent_ftn(_map, "Gravity", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
		    if (_map[? "GravityH"] != undefined) {
				prevent = prevent_ftn(_map, "GravityH", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
    
		    if (_map[? "difficulty"] != undefined) {
				prevent = prevent_ftn(_map, "difficulty", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
			
			if (_map[? "prevent"] != undefined) {
		        if (_map[? "prevent"] == (prevent mod 10000)) {
					ds_map_destroy(_map);
					return true;
				}
			}
    
		    ds_map_destroy(_map);
		}
		return false;
	}
	

	filename = gameCaption+"save";
	ID = -1;
	_map = os_get_info();
	if (_map != -1 && is_string(_map[? "udid"])) {
	    ID = floor(string_digits(_map[? "udid"]));
		if (!load_data_ftn(filename, ID)) ID = -1;
	    ds_map_destroy(_map);
	}
	
	if (ID == -1) {
		ID = 577215664;
		if (!load_data_ftn(filename, ID)) ID = -1;
	}

	if (ID != -1) {
	    _map = ds_map_secure_load(filename);
	    if !instance_exists(player) {instance_create_depth(0, 0, -2, player);}
    
	    if (_map[? "room0"] != undefined and _map[? "room1"] != undefined and
	        _map[? "room2"] != undefined) {
	        num = _map[? "room2"]*(123*456)+_map[? "room1"]*123+_map[? "room0"];
	        if (room_exists(num)) {
				if (num == int64(Stage04Bs5) and world.Boss4HP <= 0) {
					room = Stage04Bs6;
					moved = true;
				} else room = num;
			} else room = Stage01A;
	    }
    
	    if (_map[? "player_x0"] != undefined and _map[? "player_x1"] != undefined) {
	        player.x = _map[? "player_x1"]*256+_map[? "player_x0"];
	    }
	    if (_map[? "player_y0"] != undefined and _map[? "player_y1"] != undefined) {
	        player.y = _map[? "player_y1"]*256+_map[? "player_y0"];
	    }
    
	    if (_map[? "Gravity"] != undefined) {
	        player.Gravity = _map[? "Gravity"];
		}
	    if (_map[? "GravityH"] != undefined) {
	        player.GravityH = _map[? "GravityH"];
		}
		
		if (moved) {
			with(player) instance_destroy();
		}
    
	    if (_map[? "difficulty"] != undefined) {
	        difficulty = _map[? "difficulty"];
		}
    
	    ds_map_destroy(_map);
		
		with(player) set_mask();
	} else {
	    //New game
	    room_goto(Stage01A);
	}

	with(world) {
	    musicFunctions();
	}
}
