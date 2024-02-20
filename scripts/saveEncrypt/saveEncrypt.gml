function saveEncrypt() {
	/*
	var i, tem, fout;

	//THIS IS USED FOR PEOPLE WHO DON'T WANT EASILY HACKABLE SAVES
	fout = file_bin_open(world.gameCaption+"save", 1);
	tem = room;
	//3 bytes are recommended for encrypting the room.

	//IDEA #1: Simple encryption. This will deter non-computer-savvy people from
	//hacking your saves, but determined people have a better shot at it.
	b[0] = floor(tem/sqr(256)); //Max value of a byte is 255 or 11111111 in binary
	tem -= floor(tem/sqr(256))*sqr(256);
	b[1] = floor(tem/256);
	tem -= floor(tem/256)*256;
	b[2] = tem;

	//IDEA #2: Linear algebra. If you instead use a base of 100 rather than 256, you can
	//use linear combinations of values to further encode your values
	/*
	part0 = tem mod 100; //Value of 0 to 99
	tem = tem div 100;
	part1 = tem mod 100;
	tem = tem div 100;
	part2 = tem;
	b[0] = part0 + part1;
	b[1] = part1 + part2;
	b[2] = part0 + part2;
	//You can use different equations as long as no value risks going negative or above 255.
	//As long as there is ONLY ONE SOLUTION to the set of equations
	//Hackers will have to waste a lot of time to figure this part out.
	*/
/*
	file_bin_write_byte(fout, b[2]);
	file_bin_write_byte(fout, b[1]);
	file_bin_write_byte(fout, b[0]);

	////////////////////////////
	//  Player's coordinates  //
	////////////////////////////
	tem = floor(player.x-player.hspeed); //2 bytes for this
	b[0] = floor(tem/256);
	tem -= floor(tem/256)*256;
	b[1] = tem;

	file_bin_write_byte(fout, b[1]);
	file_bin_write_byte(fout, b[0]);

	tem = floor(player.y-player.vspeed); //2 bytes for this
	b[0] = floor(tem/256);
	tem -= floor(tem/256)*256;
	b[1] = tem;

	file_bin_write_byte(fout, b[1]);
	file_bin_write_byte(fout, b[0]);

	//Difficulty
	file_bin_write_byte(fout, player.Gravity);
	file_bin_write_byte(fout, player.GravityH);

	//Bosses
	file_bin_close(fout);*/
	
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
	_map = os_get_info();
	if (_map != -1 && is_string(_map[? "udid"])) {
	    ID = floor(string_digits(_map[? "udid"]));
	    ds_map_destroy(_map);
	}


	_map = ds_map_create();
	num2 = 0;

	_map[? "room0"] = int64(room) mod 123;
	_map[? "room1"] = (int64(room) div 123) mod 456;
	_map[? "room2"] = (int64(room) div (123*456));
	prevent = prevent_ftn(_map, "room0", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "room1", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "room2", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	////////////////////////////
	//  Player's coordinates  //
	////////////////////////////
	num = floor(player.x-player.hspeed);
	_map[? "player_x0"] = num mod 256;
	_map[? "player_x1"] = num div 256;
	prevent = prevent_ftn(_map, "player_x0", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "player_x1", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	num = floor(player.y-player.vspeed);
	_map[? "player_y0"] = num mod 256;
	_map[? "player_y1"] = num div 256;
	prevent = prevent_ftn(_map, "player_y0", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "player_y1", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	_map[? "Gravity"] = player.Gravity;
	_map[? "GravityH"] = player.GravityH;
	prevent = prevent_ftn(_map, "Gravity", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "GravityH", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	_map[? "difficulty"] = difficulty;
	prevent = prevent_ftn(_map, "difficulty", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	
	
	
	_map[? "prevent"] = prevent mod 10000;


	ds_map_secure_save(_map, filename);
	ds_map_destroy(_map);
}
