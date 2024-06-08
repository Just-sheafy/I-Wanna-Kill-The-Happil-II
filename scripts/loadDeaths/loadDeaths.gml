function loadDeaths() {
	/*
	if file_exists("globaldata") {
	var i, j, fin;
	
	fin = file_bin_open("globaldata", 0);

	//Follow saveEncrypt structure EXACTLY. If any equations are changed there,
	//account for that here.
	b[0] = file_bin_read_byte(fin);
	b[1] = file_bin_read_byte(fin);
	b[2] = file_bin_read_byte(fin);
    
	deaths[0] = b[0] + 256*b[1] + b[2]*sqr(256);

	for(i = 0; i < 36; i += 1) {
	    achieve[i] = file_bin_read_byte(fin);
	}

	b[0] = file_bin_read_byte(fin);
	b[1] = file_bin_read_byte(fin);

	h = b[0] + 256*b[1];

	m = file_bin_read_byte(fin);
	s = file_bin_read_byte(fin);

	SI_ok = file_bin_read_byte(fin);
	HI_ok = file_bin_read_byte(fin);
	BN_ok = file_bin_read_byte(fin);
	WASP_ok = file_bin_read_byte(fin);

	tem = file_bin_read_byte(fin);

	for(i = 15; i >= 0; i -= 1) {
	    items[i] = floor(tem/power(2,i));
	    tem -= items[i]*power(2,i);
	}

	for(i = 36; i < 72; i += 1) {
	    achieve[i] = file_bin_read_byte(fin);
	}

	BH_ok = file_bin_read_byte(fin);
	AT_ok = file_bin_read_byte(fin);
	HEALTH_ok = file_bin_read_byte(fin);

	music_vol = file_bin_read_byte(fin)/100;
	sound_vol = file_bin_read_byte(fin)/100;
	screen_effect_enable = file_bin_read_byte(fin);


	file_bin_close(fin);
	} else {
	    //New game
	    if room!=startRoom and room!=loadRoom {room_goto(Stage01A);}
	}

	with(world) {
	    musicFunctions();
	}*/

	var ID, num2, prevent, text, i, j, filename, _map;
	var load_data_ftn;
	
	load_data_ftn = function(__filename, __ID) {
		var num2, prevent, i, j, _map;
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
    
		    if (_map[? "gamediff"] != undefined) {
				prevent = prevent_ftn(_map, "gamediff", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
			
		    if (_map[? "deaths0"] != undefined and _map[? "deaths1"] != undefined and
		        _map[? "deaths2"] != undefined and _map[? "deaths3"] != undefined) {
				prevent = prevent_ftn(_map, "deaths0", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "deaths1", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "deaths2", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "deaths3", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
    
		    for(i=0; i<9; i+=1) {
		        text = "achieve" + string(i);
		        if (_map[? text] != undefined) {
					prevent = prevent_ftn(_map, text, __ID, num2, prevent);
					num2 = num_ftn(__ID, num2);
		        }
		    }
    
		    for(i=0; i<2; i+=1) {
		        text = "items" + string(i);
		        if (_map[? text] != undefined) {
					prevent = prevent_ftn(_map, text, __ID, num2, prevent);
					num2 = num_ftn(__ID, num2);
		        }
		    }
    
		    if (_map[? "h0"] != undefined and _map[? "h1"] != undefined and
		        _map[? "h2"] != undefined) {
				prevent = prevent_ftn(_map, "h0", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "h1", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
				prevent = prevent_ftn(_map, "h2", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
		    if (_map[? "m"] != undefined) {
				prevent = prevent_ftn(_map, "m", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
			if (_map[? "s"] != undefined) {
				prevent = prevent_ftn(_map, "s", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
    
		    if (_map[? "ok_series"] != undefined) {
				prevent = prevent_ftn(_map, "ok_series", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
		    }
		
			if (_map[? "HEALTH_type"] != undefined) {
				prevent = prevent_ftn(_map, "HEALTH_type", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
    
		    if (_map[? "music_vol"] != undefined) {
				prevent = prevent_ftn(_map, "music_vol", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
			if (_map[? "sound_vol"] != undefined) {
				prevent = prevent_ftn(_map, "sound_vol", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
		
			if (_map[? "music_slowdown"] != undefined) {
				prevent = prevent_ftn(_map, "music_slowdown", __ID, num2, prevent);
				num2 = num_ftn(__ID, num2);
			}
			if (_map[? "vsync"] != undefined) {
				prevent = prevent_ftn(_map, "vsync", __ID, num2, prevent);
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
	};
	

	filename = "globaldata";
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
    
	    if (_map[? "gamediff"] != undefined) {
	        gamediff[0] = _map[? "gamediff"];
		}
		
	    if (_map[? "deaths0"] != undefined and _map[? "deaths1"] != undefined and
	        _map[? "deaths2"] != undefined and _map[? "deaths3"] != undefined) {
	        deaths[0] = _map[? "deaths3"]*(101*103*107)+_map[? "deaths2"]*(101*103)+
	            _map[? "deaths1"]*101+_map[? "deaths0"];
		}
    
	    for(i=0; i<9; i+=1) {
	        text = "achieve" + string(i);
	        if (_map[? text] != undefined) {
	            for(j=0; j<8; j+=1)
	                achieve[8*i+j] = (_map[? text] div power(2, j)) mod 2;
	        }
	    }
    
	    for(i=0; i<2; i+=1) {
	        text = "items" + string(i);
	        if (_map[? text] != undefined) {
	            for(j=0; j<8; j+=1)
	                items[8*i+j] = (_map[? text] div power(2, j)) mod 2;
	        }
	    }
    
	    if (_map[? "h0"] != undefined and _map[? "h1"] != undefined and
	        _map[? "h2"] != undefined) {
	        h = _map[? "h2"]*(314*159)+_map[? "h1"]*314+_map[? "h0"];
		}
	    if (_map[? "m"] != undefined) {
	        m = _map[? "m"];
		}
		if (_map[? "s"] != undefined) {
	        s = _map[? "s"];
		}
    
	    if (_map[? "ok_series"] != undefined) {
	        HEALTH_ok = _map[? "ok_series"] mod 5;
	        screen_effect_enable = (_map[? "ok_series"] div 5) mod 2;
	        AT_ok = (_map[? "ok_series"] div 10) mod 2;
	        BH_ok = (_map[? "ok_series"] div 20) mod 2;
	        WASP_ok = (_map[? "ok_series"] div 40) mod 2;
	        BN_ok = (_map[? "ok_series"] div 80) mod 2;
	        HI_ok = (_map[? "ok_series"] div 160) mod 2;
	        SI_ok = (_map[? "ok_series"] div 320) mod 2;
	    }
		
		if (_map[? "HEALTH_type"] != undefined) {
	        HEALTH_type = _map[? "HEALTH_type"];
		}
    
	    if (_map[? "music_vol"] != undefined) {
	        music_vol = _map[? "music_vol"]/100;
		}
		if (_map[? "sound_vol"] != undefined) {
	        sound_vol = _map[? "sound_vol"]/100;
		}
		
		if (_map[? "music_slowdown"] != undefined) {
	        music_slowdown = _map[? "music_slowdown"];
		}
		if (_map[? "vsync"] != undefined) {
	        vsync = _map[? "vsync"];
			display_reset(0, (vsync == 1));
		}
    
	    ds_map_destroy(_map);
	} else {
	    //New game
	    if room!=startRoom and room!=loadRoom {room_goto(Stage01A);}
	}

	with(world) {
	    musicFunctions();
	}
	
	
}
