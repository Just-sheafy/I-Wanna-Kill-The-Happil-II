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
	
	var ID, num, num2, prevent, filename, _map;
	var prevent_ftn, num_ftn;
	
	prevent_ftn = function(__map, __text, __ID, __num2, __prevent) {
		return __prevent + __map[? __text]*((__ID div power(10, __num2)) mod 10);
	};
	num_ftn = function(__ID, __num2) {
		if (power(10, __num2+1) <= __ID) return __num2 + 1;
		else return 0;
	};
	

	filename = gameCaption+"save";
	ID = 577215664;
	prevent = 0;
	num2 = 0;
	_map = os_get_info();
	if (_map != -1 && is_string(_map[? "udid"])) {
	    ID = floor(string_digits(_map[? "udid"]));
	    ds_map_destroy(_map);
	}

	if (file_exists(filename)) {
	    _map = ds_map_secure_load(filename);
	    if !instance_exists(player) {instance_create_depth(0, 0, -2, player);}
    
	    if (_map[? "room0"] != undefined and _map[? "room1"] != undefined and
	        _map[? "room2"] != undefined) {
	        num = _map[? "room2"]*(123*456)+_map[? "room1"]*123+_map[? "room0"];
	        if (room_exists(num)) room = num;
			else room = Stage01A;
			prevent = prevent_ftn(_map, "room0", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
			prevent = prevent_ftn(_map, "room1", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
			prevent = prevent_ftn(_map, "room2", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
	    }
    
	    if (_map[? "player_x0"] != undefined and _map[? "player_x1"] != undefined) {
	        player.x = _map[? "player_x1"]*256+_map[? "player_x0"];
			prevent = prevent_ftn(_map, "player_x0", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
			prevent = prevent_ftn(_map, "player_x1", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
	    }
	    if (_map[? "player_y0"] != undefined and _map[? "player_y1"] != undefined) {
	        player.y = _map[? "player_y1"]*256+_map[? "player_y0"];
			prevent = prevent_ftn(_map, "player_y0", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
			prevent = prevent_ftn(_map, "player_y1", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
	    }
    
	    if (_map[? "Gravity"] != undefined) {
	        player.Gravity = _map[? "Gravity"];
			prevent = prevent_ftn(_map, "Gravity", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
		}
	    if (_map[? "GravityH"] != undefined) {
	        player.GravityH = _map[? "GravityH"];
			prevent = prevent_ftn(_map, "GravityH", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
		}
    
	    if (_map[? "difficulty"] != undefined) {
	        difficulty = _map[? "difficulty"];
			prevent = prevent_ftn(_map, "difficulty", ID, num2, prevent);
			num2 = num_ftn(ID, num2);
		}
		if (_map[? "prevent"] != undefined) {
	        // if (_map[? "prevent"] != (prevent mod 10000))
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
