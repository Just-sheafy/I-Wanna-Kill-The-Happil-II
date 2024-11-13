var i, macro_temp = "";

if (room == beforeRoom or room == startRoom) {
	var cam = view_camera[0];
	camera_set_view_pos(cam, 0, 0);
}

// Macro, Console and Pause
pause_time = max(pause_time-1, 0);

if (!instance_exists(objPause)) {
	if (room != initRoom and room != beforeRoom and room != startRoom and room != loadRoom and room != beginning) {
		if (global.TEST && keyboard_check_pressed(vk_anykey)) {
			if (keyboard_key == consoleKey or (keyboard_check(vk_alt) && keyboard_key == 31)) {
				// Enable console
				global.console = !global.console;
				macro_text = "";
				error_text = "";
				macro_input = 0;
				delete_time = 0;
			} else if (!global.console && keyboard_key == hotKey) {
				if (ds_list_size(list_console_text) > 0) {
					global.console = true;
					macro_input = 0;
					macro_temp = ds_list_find_value(list_console_text, 0);
				}
			} else if (!global.console && ds_exists(map_macro_key, ds_type_map) && ds_exists(map_macro, ds_type_map)) {
				for(i=0; i<macro_num; i+=1) {
					if (ds_map_exists(map_macro_key, "macro" + string(i)) &&
						map_macro_key[? "macro" + string(i)] == keyboard_key) {
						if (ds_map_exists(map_macro, "macro" + string(i))) {
							global.console = true;
							macro_input = 0;
							macro_temp = map_macro[? "macro" + string(i)];
						}
						break;
					}
				}
			}
		}
	}
	
	if (room != initRoom and room != beforeRoom and room != startRoom and room != loadRoom and room != beginning and
		room != Stage01Bs2 and room != Stage01Bs3 and room != Stage02Bs2 and room != Stage02Bs3 and room != Stage02Bs4 and
		room != Stage02Bs5 and room != Stage03Bs2 and room != Stage03Bs3 and room != Stage03Bs4 and room != Stage03Bs5 and
		room != Stage04Bs2 and room != Stage04Bs3 and room != Stage04Bs4 and room != Stage04Bs5 and room != Stage04Bs6 and
		room != Stage04Bs7 and (instance_exists(SavePoint2) or (room != Stage01Bs and room != Stage02Bs and
		room != Stage03Bs and room != Stage04Bs and room != Stage01Sr and room != Stage02Sr and
		room != Stage03Sr))) {
		if (!instance_exists(Cutscene01J)) {
			// not playing cutscene
			if (!global.console && pause_time <= 0 && keyboard_check_pressed(pauseKey)) {
				// Pause
				var cam = view_camera[0];
		        instance_create_depth(camera_get_view_x(cam),camera_get_view_y(cam),-1200,objPause);
				audio_play_sound(sndPaused, 0, false, world.sound_vol);
			}
		}
	}
}

if (global.console) {
	var j, str = "";
	
	if (macro_text != "") {
		if (mouse_wheel_up()) macro_show_num = max(macro_show_num-1, 0);
		else if (mouse_wheel_down()) macro_show_num = min(macro_show_num+1, max(macro_num-17, 0));
	}
	
	if (keyboard_check_pressed(vk_anykey)) { str = keyboard_key; delete_time = 0; }
	else if (keyboard_check(vk_anykey) && keyboard_key == vk_backspace) {
		delete_time += 1;
		if (delete_time >= 25) { delete_time = 23; str = vk_backspace; }
	} else delete_time = 0;
	if (str != "" or macro_temp != "") {
		if (macro_input == 1 or macro_input == 3) {
			if (str == vk_escape) {
				macro_input = 0;
				error_text = "";
			} else if (str == vk_enter or str == vk_f2 or str == vk_alt or str == leftKey or str == rightKey or
				str == upKey or str == downKey or str == jumpKey or str == shootKey or str == skipKey or
				str == gameRestart or str == pauseKey or str == consoleKey or str == hotKey) {
				macro_input = 0;
				error_text = "INVALID INPUTS";
			} else if (str != vk_f4 and str != vk_f9) {
				if (macro_input == 1) {
					macro_input_key = str;
					macro_input = 2;
					error_text = "INPUT?";
				} else {
					if (ds_exists(map_macro_key, ds_type_map) && ds_exists(map_macro, ds_type_map)) {
						for(i=0; i<macro_num; i+=1) {
							if (ds_map_exists(map_macro_key, "macro" + string(i)) && map_macro_key[? "macro" + string(i)] == str) break;
						}
						if (i < macro_num) {
							for(j=i+1; j<macro_num; j+=1) {
								if (ds_map_exists(map_macro_key, "macro" + string(j))) {
									map_macro_key[? "macro" + string(j-1)] = map_macro_key[? "macro" + string(j)];
								} else if (ds_map_exists(map_macro_key, "macro" + string(j-1))) {
									ds_map_delete(map_macro_key, "macro" + string(j-1));
								}
								if (ds_map_exists(map_macro, "macro" + string(j))) {
									map_macro[? "macro" + string(j-1)] = map_macro[? "macro" + string(j)];
								} else if (ds_map_exists(map_macro, "macro" + string(j-1))) {
									ds_map_delete(map_macro, "macro" + string(j-1));
								}
							}
							
							macro_num -= 1;
							if (ds_map_exists(map_macro_key, "macro" + string(macro_num)))
								ds_map_delete(map_macro_key, "macro" + string(macro_num));
							if (ds_map_exists(map_macro, "macro" + string(macro_num)))
								ds_map_delete(map_macro, "macro" + string(macro_num));
							saveControls();
						}
					}
				
					macro_input = 0;
					error_text = "";
				}
			}
		} else {
			for(i=48; i<=57; i+=1) { // digits
				if (str == ord(chr(i))) console_text += chr(i);
			}
			for(i=65; i<=90; i+=1) { // letters
				if (str == ord(chr(i))) console_text += chr(i);
			}
			if (str == vk_space) console_text += " ";
			if (str == vk_add) console_text += "+";
			if (str == vk_subtract) console_text += "-";
			if (str == vk_numpad0) console_text += "0";
			if (str == vk_numpad1) console_text += "1";
			if (str == vk_numpad2) console_text += "2";
			if (str == vk_numpad3) console_text += "3";
			if (str == vk_numpad4) console_text += "4";
			if (str == vk_numpad5) console_text += "5";
			if (str == vk_numpad6) console_text += "6";
			if (str == vk_numpad7) console_text += "7";
			if (str == vk_numpad8) console_text += "8";
			if (str == vk_numpad9) console_text += "9";
			
			if (str == vk_backspace && console_text != "") {
				console_text = string_delete(console_text, string_length(console_text), 1);
			}
			if (str == vk_up && console_num >= 1) {
				console_num -= 1;
				console_text = ds_list_find_value(list_console_text, min(console_num, ds_list_size(list_console_text)-1));
			}
			if (str == vk_down) {
				if (ds_list_size(list_console_text) > 0) {
					console_num = min(console_num+1, ds_list_size(list_console_text)-1);
					console_text = ds_list_find_value(list_console_text, max(console_num, 0));
				}
			}
			
			if ((str == vk_enter && console_text != "") || macro_temp != "") { // input
				if (macro_temp != "") console_text = macro_temp;
				
				var temp, temp2 = "", temp3 = "", temp4 = (macro_input == 0);
				var list_text = string_split(console_text, " ", true);
				
				macro_text = "";
				error_text = "";
				if (array_length(list_text) > 0) {
					temp = list_text[0];
					if (temp == "ROOM" or temp == "PRACTICE" or temp == "ITEM" or temp == "ACHIEVEMENT") {
						if (array_length(list_text) >= 4) {
							error_text = "TOO MANY INPUTS";
						} else {
							if (array_length(list_text) == 2) {
								temp2 = list_text[1];
							} else if (array_length(list_text) == 3) {
								temp2 = list_text[1];
								temp3 = list_text[2];
							}
							
							if ((temp == "ROOM" && TEST_FUNCTIONS.ROOM(temp2, temp3, temp4)) ||
								(temp == "PRACTICE" && TEST_FUNCTIONS.PRACTICE(temp2, temp3, temp4)) ||
								(temp == "ITEM" && TEST_FUNCTIONS.ITEM(temp2, temp3, temp4)) ||
								(temp == "ACHIEVEMENT" && TEST_FUNCTIONS.ACHIEVEMENT(temp2, temp3, temp4))) {
								global.console = false;
								if (temp4 && macro_temp == "" &&
									(ds_list_size(list_console_text) == 0 || console_text != ds_list_find_value(list_console_text, 0)))
									ds_list_insert(list_console_text, 0, console_text);
							} else error_text = "INVALID INPUTS";
						}
					} else if (temp == "INVINCIBLE" or temp == "INFJUMP" or temp == "MASK" or temp == "ROOMSPD") {
						if (array_length(list_text) >= 3) {
							error_text = "TOO MANY INPUTS";
						} else {
							if (array_length(list_text) == 2) {
								temp2 = list_text[1];
							}
							
							if ((temp == "INVINCIBLE" && TEST_FUNCTIONS.INVINCIBLE(temp2, temp4)) ||
								(temp == "INFJUMP" && TEST_FUNCTIONS.INFINITE_JUMP(temp2, temp4)) ||
								(temp == "MASK" && TEST_FUNCTIONS.MASK(temp2, temp4)) ||
								(temp == "ROOMSPD" && TEST_FUNCTIONS.ROOM_SPD(temp2, temp4))) {
								global.console = false;
								if (temp4 && macro_temp == "" &&
									(ds_list_size(list_console_text) == 0 || console_text != ds_list_find_value(list_console_text, 0)))
									ds_list_insert(list_console_text, 0, console_text);
							} else error_text = "INVALID INPUTS";
						}
					} else if (temp == "FLIP" or temp == "ROTATE" or temp == "SAVE" or temp == "HELP") {
						if (array_length(list_text) >= 2) {
							error_text = "TOO MANY INPUTS";
						} else {
							if (temp == "FLIP") TEST_FUNCTIONS.FLIP_GRAV(temp4);
							else if (temp == "ROTATE") TEST_FUNCTIONS.ROTATE_GRAV(temp4);
							else if (temp == "SAVE") TEST_FUNCTIONS.SAVE(temp4);
							global.console = false;
							if (temp == "HELP") {
								if (temp4) {
									error_text = "HELP";
									global.console = true;
								} else error_text = "INVALID INPUTS";
							}
							
							if (temp4 && macro_temp == "" &&
								(ds_list_size(list_console_text) == 0 || console_text != ds_list_find_value(list_console_text, 0)))
								ds_list_insert(list_console_text, 0, console_text);
						}
					} else if (temp4 && temp == "MACRO") {
						if (array_length(list_text) >= 3) {
							error_text = "TOO MANY INPUTS";
						} else {
							if (array_length(list_text) == 2) {
								temp2 = list_text[1];
							}
							
							if (temp2 == "I" or temp2 == "INIT" or temp2 == "INITIALIZE") {
								if (!ds_exists(map_macro_key, ds_type_map)) map_macro_key = ds_map_create();
								else ds_map_clear(map_macro_key);
								if (!ds_exists(map_macro, ds_type_map)) map_macro = ds_map_create();
								else ds_map_clear(map_macro);
								
								macro_num = 8;
								map_macro_key[? "macro0"] = vk_backspace;
								map_macro[? "macro0"] = "ROOM PREV";			// Previous room
								map_macro_key[? "macro1"] = vk_space;
								map_macro[? "macro1"] = "ROOM NEXT";			// Next room
								map_macro_key[? "macro2"] = vk_pagedown;
								map_macro[? "macro2"] = "INFJUMP";				// Infinite jump
								map_macro_key[? "macro3"] = vk_insert;
								map_macro[? "macro3"] = "ITEM ALL";				// Toggle items
								map_macro_key[? "macro4"] = vk_delete;
								map_macro[? "macro4"] = "INVINCIBLE";			// Invincible
								map_macro_key[? "macro5"] = vk_pageup;
								map_macro[? "macro5"] = "ROTATE";				// Rotate
								map_macro_key[? "macro6"] = vk_home;
								map_macro[? "macro6"] = "FLIP";					// Flip
								map_macro_key[? "macro7"] = vk_end;
								map_macro[? "macro7"] = "SAVE";					// Save
								
								global.console = false;
								saveControls();
							} else if (temp2 == "S" or temp2 == "SET") {
								macro_input = 1;
								error_text = "KEY?";
							} else if (temp2 == "R" or temp2 == "REMOVE") {
								macro_input = 3;
								error_text = "KEY?";
							} else if (temp2 == "") {
								if (!ds_exists(map_macro_key, ds_type_map)) map_macro_key = ds_map_create();
								if (!ds_exists(map_macro, ds_type_map)) map_macro = ds_map_create();
								
								macro_show_num = 0;
								for(i=0; i<macro_num; i+=1) {
									if (ds_map_exists(map_macro_key, "macro" + string(i)) && ds_map_exists(map_macro, "macro" + string(i))) {
										macro_text += "[" + string_upper(scr_keytostring(map_macro_key[? "macro" + string(i)]))
											+ "]: " + string_upper(map_macro[? "macro" + string(i)]);
										if (i < macro_num) macro_text += "\n";
									}
								}
							} else error_text = "INVALID INPUTS";
							
							if (macro_temp == "" && (ds_list_size(list_console_text) == 0 || console_text != ds_list_find_value(list_console_text, 0)))
								ds_list_insert(list_console_text, 0, console_text);
						}
					} else {
						error_text = "INVALID INPUTS";
					}
				}
				
				if (!temp4) {
					if (error_text == "") {
						if (!ds_exists(map_macro_key, ds_type_map)) {
							macro_num = 0;
							map_macro_key = ds_map_create();
						}
						if (!ds_exists(map_macro, ds_type_map)) {
							macro_num = 0;
							map_macro = ds_map_create();
						}
						if (macro_num == 0) {
							ds_map_clear(map_macro_key);
							ds_map_clear(map_macro);
						}
						
						for(i=0; i<macro_num; i+=1) {
							if (ds_map_exists(map_macro_key, "macro" + string(i)) && map_macro_key[? "macro" + string(i)] == macro_input_key) break;
						}
						map_macro_key[? "macro" + string(i)] = macro_input_key;
						map_macro[? "macro" + string(i)] = console_text;
						if (i >= macro_num) macro_num += 1;
						saveControls();
					}
					
					macro_input = 0;
					macro_input_key = -1;
					global.console = true;
				}
				
				if (macro_temp != "") {
					global.console = false;
					macro_text = "";
					error_text = "";
					macro_input = 0;
				}
				
				while (ds_list_size(list_console_text) > 30) {
					ds_list_delete(list_console_text, ds_list_size(list_console_text)-1);
				}
				console_text = "";
				console_num = -1;
			}
		}
	}
}