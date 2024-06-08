function saveDeaths() {
	/*
	var tem, i, j, fout;
	
	//THIS IS USED FOR PEOPLE WHO DON'T WANT EASILY HACKABLE SAVES
	fout = file_bin_open("globaldata", 1);
	//3 bytes are recommended for encrypting the room.

	tem = deaths[0];
	b[0] = floor(tem/sqr(256)); //Max value of a byte is 255 or 11111111 in binary
	tem -= floor(tem/sqr(256))*sqr(256);
	b[1] = floor(tem/256);
	tem -= floor(tem/256)*256;
	b[2] = tem;
	file_bin_write_byte(fout, b[2]);
	file_bin_write_byte(fout, b[1]);
	file_bin_write_byte(fout, b[0]);

	for(j = 0; j < 36; j += 1) {
	    file_bin_write_byte(fout, achieve[j]);
	}

	tem = h;
	b[0] = floor(tem/256);
	tem -= floor(tem/256)*256;
	b[1] = tem;
	file_bin_write_byte(fout, b[1]);
	file_bin_write_byte(fout, b[0]);

	file_bin_write_byte(fout, m);
	file_bin_write_byte(fout, s);

	file_bin_write_byte(fout, SI_ok);
	file_bin_write_byte(fout, HI_ok);
	file_bin_write_byte(fout, BN_ok);
	file_bin_write_byte(fout, WASP_ok);

	tem = 0;
	for(j = 0; j < 16; j += 1) {
	    if items[j] {tem += power(2, j);}
	}
	file_bin_write_byte(fout, tem);

	for(j = 36; j < 72; j += 1) {
	    file_bin_write_byte(fout, achieve[j]);
	}

	file_bin_write_byte(fout, BH_ok);
	file_bin_write_byte(fout, AT_ok);
	file_bin_write_byte(fout, HEALTH_ok);

	file_bin_write_byte(fout, floor(music_vol*100));
	file_bin_write_byte(fout, floor(sound_vol*100));
	file_bin_write_byte(fout, screen_effect_enable);

	file_bin_close(fout);
	*/
	
	var ID, num, num2, prevent, text, i, j, filename, _map;
	var prevent_ftn, num_ftn;
	
	prevent_ftn = function(__map, __text, __ID, __num2, __prevent) {
		return __prevent + __map[? __text]*((__ID div power(10, __num2)) mod 10);
	};
	num_ftn = function(__ID, __num2) {
		if (power(10, __num2+1) <= __ID) return __num2 + 1;
		else return 0;
	};
	

	filename = "globaldata";
	ID = 577215664;
	prevent = 0;
	/*
	// OS dectector
	_map = os_get_info();
	if (_map != -1 && is_string(_map[? "udid"])) {
	    ID = floor(string_digits(_map[? "udid"]));
	    ds_map_destroy(_map);
	}
	*/

	_map = ds_map_create();
	num2 = 0;

	_map[? "gamediff"] = gamediff[0];
	_map[? "deaths0"] = deaths[0] mod 101;
	_map[? "deaths1"] = (deaths[0] div 101) mod 103;
	_map[? "deaths2"] = (deaths[0] div (101*103)) mod 107;
	_map[? "deaths3"] = deaths[0] div (101*103*107);
	prevent = prevent_ftn(_map, "gamediff", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "deaths0", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "deaths1", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "deaths2", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "deaths3", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	for(i=0; i<9; i+=1) {
	    num = 0;
	    for(j=0; j<8; j+=1) num += power(2, j)*achieve[8*i+j];
	    text = "achieve" + string(i);
	    _map[? text] = num;
		prevent = prevent_ftn(_map, text, ID, num2, prevent);
		num2 = num_ftn(ID, num2);
	}

	for(i=0; i<2; i+=1) {
	    num = 0;
	    for(j=0; j<8; j+=1) num += power(2, j)*items[8*i+j];
	    text = "items" + string(i);
	    _map[? text] = num;
		prevent = prevent_ftn(_map, text, ID, num2, prevent);
		num2 = num_ftn(ID, num2);
	}

	_map[? "h0"] = h mod 314;
	_map[? "h1"] = (h div 314) mod 159;
	_map[? "h2"] = h div (314*159);
	_map[? "m"] = m;
	_map[? "s"] = s;
	prevent = prevent_ftn(_map, "h0", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "h1", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "h2", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "m", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "s", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	_map[? "ok_series"] = SI_ok;
	_map[? "ok_series"] = _map[? "ok_series"]*2+HI_ok;
	_map[? "ok_series"] = _map[? "ok_series"]*2+BN_ok;
	_map[? "ok_series"] = _map[? "ok_series"]*2+WASP_ok;
	_map[? "ok_series"] = _map[? "ok_series"]*2+BH_ok;
	_map[? "ok_series"] = _map[? "ok_series"]*2+AT_ok;
	_map[? "ok_series"] = _map[? "ok_series"]*2+screen_effect_enable;
	_map[? "ok_series"] = _map[? "ok_series"]*5+HEALTH_ok;
	prevent = prevent_ftn(_map, "ok_series", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	
	_map[? "HEALTH_type"] = HEALTH_type;
	prevent = prevent_ftn(_map, "HEALTH_type", ID, num2, prevent);
	num2 = num_ftn(ID, num2);

	_map[? "music_vol"] = floor(music_vol*100);
	_map[? "sound_vol"] = floor(sound_vol*100);
	prevent = prevent_ftn(_map, "music_vol", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	prevent = prevent_ftn(_map, "sound_vol", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	
	_map[? "music_slowdown"] = music_slowdown;
	prevent = prevent_ftn(_map, "music_slowdown", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	_map[? "vsync"] = vsync;
	prevent = prevent_ftn(_map, "vsync", ID, num2, prevent);
	num2 = num_ftn(ID, num2);
	
	_map[? "prevent"] = prevent mod 10000;


	ds_map_secure_save(_map, filename);
	ds_map_destroy(_map);
	
}
