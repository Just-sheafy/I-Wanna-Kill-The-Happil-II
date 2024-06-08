var i;

if (instance_number(world) > 1) {
	instance_destroy(); exit;
}

depth = -999999;
randomize();

shader_supported = shaders_are_supported();
resource_loaded = false;
credit_loaded = false;

///////////////////
//  FILE NAMING  //
///////////////////
gameCaption = "IWKTHII_" //Used as your file prefixes

///////////////////////
//  MUSIC VARIABLES  //
///////////////////////

musicOn = -1;
curMusic = noone; //Default, to avoid errors
filePlaying = -1;
Instance = -1;
Kill = -1;

for(i=0; i<3; i+=1) {
	list_sounds[i] = ds_list_create();
}
effect = -1;

music_speed = 1;
music_sp = 1;

//////////////////////
//  FOR SAVE FILES  //
//////////////////////

savenum = 0; //Which save is selected
difficulty = 1; //Hard by default
for(i = 0; i < 16; i += 1) {
   items[i] = 0; //Up to 16 bosses, none are defeated by default
}
for(i = 0; i < 72; i += 1) {
   achieve[i] = 0;
}

////////////////////////
//  DEFAULT CONTROLS  //
////////////////////////

leftKey = vk_left;
rightKey = vk_right;
upKey = vk_up;
downKey = vk_down;
jumpKey = vk_shift;
shootKey = ord("Z");
skipKey = ord("S");
gameRestart = ord("R");
suicide = ord("Q");
musicKey = ord("M");
pauseKey = ord("P");
consoleKey = 192;

forcedSave = ord("C"); // debug setting
forcedLoad = ord("X");

///////////////////////////
//  DEFAULT SCREENSHOTS  //
///////////////////////////
ss0 = 0;
ss1 = 0;
ss2 = 0;

timing = 60;
h = 0;
m = 0;
s = 0;

SI_ok = 1;
HI_ok = 1;
BN_ok = 1;
WASP_ok = 1;
HEALTH_ok = 1;
HEALTH_type = 0; // 3 types in total
BH_ok = 1;
AT_ok = 1;

kill = true;
IJ = false;
show_mask = false;

music_vol = 1;
sound_vol = 1;
music_slowdown = 1;
vsync = 0;
screen_effect_enable = 1;

//NOTE: The number of the ss variables refer to the image_index of the screenshot sprite
//image 0 is the "NEW GAME" image. Subsequent images must be added to that sprite in order for
//the screenshots to work properly. More info in the screenshot object.

//IF A CONTROLS FILE EXISTS, IT IS EXECUTED AND OVERWRITES THE DEFAULT CONTROLS
map_macro_key = ds_map_create();
map_macro = ds_map_create();
macro_num = 0;

macro_show_num = 0;
delete_time = 0;
macro_input_key = -1;
macro_text = "";
macro_input = 0; // 1: set macro key, 2: set macro, 3: remove macro key
if file_exists(gameCaption+"controls") {loadControls();}
else {
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
}

// if file_exists("globaldata") file_delete("globaldata");
// if file_exists(gameCaption+"save") file_delete(gameCaption+"save");

//FINALLY, INITIALIZES THE SECRET ITEMS, DIFFICULTIES, AND DEATH COUNTS
if !file_exists("globaldata") {
    gamediff[0]=-1;
    gamediff[1]=-1;
    gamediff[2]=-1;
    deaths[0]=0;
    deaths[1]=0;
    deaths[2]=0;
    musicOn=1;
    saveDeaths();
}
loadDeaths();

// ADDITIONAL VARIABLES

global.ROOM_SPEED = 50;

warn = 0; // happil warning
a = 0; // position of the music instance
b = 0; // boss hp
c = 0; // maintain boss hp
credit_played = false; // false end credit played?
hp_before = -1; // remained hp
var_temp = 0; // temporary variable
re_nodie = false; // constant save
pause_time = 0;
surf_temp = -1;
spr_temp = -1;

secretBoss1Skip = 0;
Boss4HP = 44;

room_before = -1;
for(i=0; i<8; i+=1) {
    back_x_before[i] = 0;
    back_y_before[i] = 0;
}
list_obj_before = ds_list_create();
list_objx_before = ds_list_create();
list_objy_before = ds_list_create();

global.fontBoss02 = font_add_sprite(sprFontBoss02, 32, 1, 8);
global.fontBoss04 = font_add_sprite(sprFontBoss04, 32, 1, -1);

//KEEP THIS OBJECT PERSISTENT!
//NEVER DESTROY THIS OBJECT//

// For Test

global.TEST = true; // CHANGE BEFORE UPLOADING!!
global.console = false;
global.practice = -1;
// BOSS 1
// 101: ~ Crazy Spike, 102: Green Apple ~ just before Sticky Keys, 103: Sticky Keys
// 104: Phase 1-2 beginning ~ Tyson, 105: Blue Cat
// 106: Avoidance first part, 107: Avoidance second part, 108: Phase 2
// BOSS 2
// 201: Mario, 202: Intermission between Mario and Zelda, 203: Zelda, 204: Gustav
// 205: Exor, 206: Boshy, 207: Dark Boshy, 208: Dark Boo
// 209: 44 seconds, 210: Avoidance first part, 211: Avoidance second part
// BOSS 3
// 301: ~ before Mario, 302: Mario ~ before Jick, 303: Jick, 304: First Avoidance
// 305: PDplayer, 306: Intermission between PDplayer and Kukul, 307: Kukul
// 308: Second Avoidance, 309: Phase 3 ~ before Viridian, 310: Viridian
// 311: Pochi, 312: Final pattern
// BOSS 4
// 401: Phase 1-1, 402: Contrary first part, 403: Contrary second part
// 404: Catastrophe first part, 405: Catastrophe second part
// 406: Phase 1-2, 407: Phase 2 first part, 408: Phase 2 second part
// 409: Health Sword ~ just before Mobius, 410: Mobius, 411: Three Lasers
// 412: Two twos ~ Face Attack, 413: ONE, 414: GO! ~ FATAL ERROR
// SECRET BOSS 1
// 151: 16 ~ 128, 152: 256 ~ 512, 153: 2048

console_text = "";
error_text = "";
list_console_text = ds_list_create();
console_num = -1;

TEST_FUNCTIONS = {
	ROOM : 0,				// room_goto()
	PRACTICE : 0,			// practice room
	INVINCIBLE : 0,			// make player invincible
	INFINITE_JUMP : 0,		// give player infinite jump
	FLIP_GRAV : 0,			// flip player gravity
	ROTATE_GRAV : 0,		// rotate player gravity
	MASK : 0,				// show masks
	SAVE : 0,				// save the current state
	ITEM : 0,				// adjust items
	ACHIEVEMENT : 0,		// adjust achievement
	ROOM_SPD : 0			// adjust room speed
};

TEST_FUNCTIONS.ROOM = function(__str1, __str2, ability = true) {
	var i, str1, str2, send_ftn, l1, l2;
	
	str1 = string_upper(__str1);
	str2 = string_upper(__str2);
	send_ftn = function() {
		with(player) {instance_destroy();}
		warn = 0;
		hp_before = -1;
		var_temp = 0;
		audio_stop_channel(1);
		audio_stop_channel(2);
		music_speed = 1;
		music_sp = 1;
		audio_resume_sound(Instance);
	};
	
	
	if (str1 == "P" or str1 == "PREV" or str1 == "PREVIOUS" or str1 == "-") {
		if (room != Stage01A) {
			if (ability) {
				send_ftn();
				room_goto_previous();
			}
			return true;
		}
	} else if (str1 == "N" or str1 == "NEXT" or str1 == "+") {
		if (room_exists(room_next(room))) {
			if (ability) {
				send_ftn();
			    room_goto_next();
			}
			return true;
		}
	} else if (str1 == "F" or str1 == "FIRST") {
		if (room != Stage01A) {
			if (ability) {
				send_ftn();
			    room_goto(Stage01A);
			}
			return true;
		}
	} else if (str1 == "L" or str1 == "LAST") {
		if (room_exists(room_next(room))) {
			if (ability) {
				send_ftn();
			    room_goto(room_last);
			}
			return true;
		}
	} else if (str1 == "1") {
		l1 = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "BS", "BOSS", "SR", "SECRET", "HD", "HIDDEN"];
		l2 = [Stage01A, Stage01B, Stage01C, Stage01D, Stage01E, Stage01F, Stage01G, Stage01H,
			Stage01I, Stage01J, Stage01Bs, Stage01Bs, Stage01Sr, Stage01Sr, Stage01Hd, Stage01Hd];
		for(i=0; i<array_length(l1); i+=1) {
			if (str2 == l1[i]) {
				if (room != l2[i]) {
					if (ability) {
						send_ftn();
						room_goto(l2[i]);
					}
					return true;
				} else break;
			}
		}
	} else if (str1 == "2") {
		l1 = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "BS", "BOSS", "SR", "SECRET", "HD", "HIDDEN"];
		l2 = [Stage02A, Stage02B, Stage02C, Stage02D, Stage02E, Stage02F, Stage02G, Stage02H,
			Stage02I, Stage02J, Stage02K, Stage02L, Stage02Bs, Stage02Bs, Stage02Sr, Stage02Sr, Stage02Hd, Stage02Hd];
		for(i=0; i<array_length(l1); i+=1) {
			if (str2 == l1[i]) {
				if (room != l2[i]) {
					if (ability) {
						send_ftn();
						room_goto(l2[i]);
					}
					return true;
				} else break;
			}
		}
	} else if (str1 == "3") {
		l1 = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "BS", "BOSS", "SR", "SECRET", "HD", "HIDDEN"];
		l2 = [Stage03A, Stage03B, Stage03C, Stage03D, Stage03E, Stage03F, Stage03G, Stage03H,
			Stage03I, Stage03J, Stage03K, Stage03L, Stage03Bs, Stage03Bs, Stage03Sr, Stage03Sr, Stage03Hd, Stage03Hd];
		for(i=0; i<array_length(l1); i+=1) {
			if (str2 == l1[i]) {
				if (room != l2[i]) {
					if (ability) {
						send_ftn();
						room_goto(l2[i]);
					}
					return true;
				} else break;
			}
		}
	} else if (str1 == "4") {
		l1 = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "BS", "BOSS", "HD", "HIDDEN"];
		l2 = [Stage04A, Stage04B, Stage04C, Stage04D, Stage04E, Stage04F, Stage04G, Stage04H,
			Stage04I, Stage04J, Stage04K, Stage04L, Stage04M, Stage04Bs, Stage04Bs, Stage04Hd, Stage04Hd];
		for(i=0; i<array_length(l1); i+=1) {
			if (str2 == l1[i]) {
				if (room != l2[i]) {
					if (ability) {
						send_ftn();
						room_goto(l2[i]);
					}
					return true;
				} else break;
			}
		}
	}
	
	return false;
};

TEST_FUNCTIONS.PRACTICE = function(__str1, __str2, ability = true) {
	var str1, str2, send_ftn;
	
	str1 = string_upper(__str1);
	str2 = string_upper(__str2);
	
	send_ftn = function() {
		with(player) {instance_destroy();}
		warn = 0;
		hp_before = -1;
		var_temp = 0;
		audio_stop_channel(1);
		audio_stop_channel(2);
		music_speed = 1;
		music_sp = 1;
		audio_resume_sound(Instance);
	};
	
	if (str2 != "" && str2 == string_digits(str2)) {
		str2 = int64(str2);
		if (str1 == "1") {
			if (str2 >= 1 && str2 <= 8) {
				if (ability) {
					send_ftn();
					global.practice = 100 + str2;
					if (str2 <= 5) room_goto(Stage01Bs);
					else if (str2 <= 7) room_goto(Stage01Bs2);
					else room_goto(Stage01Bs3);
				}
				return true;
			}
		} else if (str1 == "2") {
			if (str2 >= 1 && str2 <= 11) {
				if (ability) {
					send_ftn();
					global.practice = 200 + str2;
					if (str2 <= 3) room_goto(Stage02Bs);
					else if (str2 <= 4) room_goto(Stage02Bs2);
					else if (str2 <= 8) room_goto(Stage02Bs3);
					else if (str2 <= 9) room_goto(Stage02Bs4);
					else  room_goto(Stage02Bs5);
				}
				return true;
			}
		} else if (str1 == "3") {
			if (str2 >= 1 && str2 <= 12) {
				if (ability) {
					send_ftn();
					global.practice = 300 + str2;
					if (str2 <= 3) room_goto(Stage03Bs);
					else if (str2 <= 4) room_goto(Stage03Bs2);
					else if (str2 <= 7) room_goto(Stage03Bs3);
					else if (str2 <= 8) room_goto(Stage03Bs4);
					else room_goto(Stage03Bs5);
				}
				return true;
			}
		} else if (str1 == "4") {
			if (str2 >= 1 && str2 <= 14) {
				if (ability) {
					send_ftn();
					global.practice = 400 + str2;
					if (str2 <= 1) room_goto(Stage04Bs);
					else if (str2 <= 3) room_goto(Stage04Bs2);
					else if (str2 <= 5) room_goto(Stage04Bs3);
					else if (str2 <= 6) room_goto(Stage04Bs4);
					else if (str2 <= 8) room_goto(Stage04Bs5);
					else room_goto(Stage04Bs6);
				}
				return true;
			}
		} else if (str1 == "1S") {
			if (str2 >= 1 && str2 <= 3) {
				if (ability) {
					send_ftn();
					global.practice = 150 + str2;
					room_goto(Stage01Sr);
				}
				return true;
			}
		}
	}
	
	return false;
};

TEST_FUNCTIONS.INVINCIBLE = function(__str, ability = true) {
	var str;
	
	str = string_upper(__str);
	if (str == "") {
		if (ability) kill = !kill;
		return true;
	} else if (str == "T" or str == "TRUE") {
		if (ability) kill = false;
		return true;
	} else if (str == "F" or str == "FALSE") {
		if (ability) kill = true;
		return true;
	}
	
	return false;
};

TEST_FUNCTIONS.INFINITE_JUMP = function(__str, ability = true) {
	var str;
	
	str = string_upper(__str);
	if (str == "") {
		if (ability) IJ = !IJ;
		return true;
	} else if (str == "T" or str == "TRUE") {
		if (ability) IJ = true;
		return true;
	} else if (str == "F" or str == "FALSE") {
		if (ability) IJ = false;
		return true;
	}
	
	return false;
};

TEST_FUNCTIONS.FLIP_GRAV = function(ability = true) {
	if (instance_exists(player)) {
		if (ability) { with(player) flip_grav(); }
		return true;
	}
	
	return false;
};

TEST_FUNCTIONS.ROTATE_GRAV = function(ability = true) {
	if (instance_exists(player)) {
		if (ability) { with(player) rotate_grav(); }
		return true;
	}
	
	return false;
};

TEST_FUNCTIONS.MASK = function(__str, ability = true) {
	var str;
	
	str = string_upper(__str);
	if (str == "") {
		if (ability) show_mask = !show_mask;
		return true;
	} else if (str == "T" or str == "TRUE") {
		if (ability) show_mask = true;
		return true;
	} else if (str == "F" or str == "FALSE") {
		if (ability) show_mask = false;
		return true;
	}
	
	return false;
};

TEST_FUNCTIONS.SAVE = function(ability = true) {
	if (instance_exists(player)) {
		if (ability) {
			saveControls();
			saveEncrypt();
			saveDeaths();
		}
		return true;
	}
	
	return false;
};

TEST_FUNCTIONS.ITEM = function(__str1, __str2, ability = true) {
	var i, str1, str2, num;
	
	str1 = string_upper(__str1);
	str2 = string_upper(__str2);
	if (str1 == "A" or str1 == "ALL") {
		if (str2 == "T" or str2 == "TRUE") {
			if (ability) {
				for(i = 0; i < 16; i += 1) {
					items[i] = true;
				}
			}
			return true;
		} else if (str2 == "F" or str2 == "FALSE") {
			if (ability) {
				for(i = 0; i < 16; i += 1) {
					items[i] = false;
				}
			}
			return true;
		} else if (str2 == "") {
			if (ability) {
				items[0] = !items[0];
				for(i = 0; i < 16; i += 1) {
					items[i] = items[0];
				}
			}
			return true;
		}
	} else if (str1 != "" && str1 == string_digits(str1)) {
		num = floor(int64(str1));
		if (num >= 0 and num < 16) {
			if (str2 == "T" or str2 == "TRUE") {
				if (ability) items[num] = true;
				return true;
			} else if (str2 == "F" or str2 == "FALSE") {
				if (ability) items[num] = false;
				return true;
			} else if (str2 == "") {
				if (ability) items[num] = !items[num];
				return true;
			}
		}
	}
	
	return false;
};

TEST_FUNCTIONS.ACHIEVEMENT = function(__str1, __str2, ability = true) {
	var i, str1, str2, num;
	
	str1 = string_upper(__str1);
	str2 = string_upper(__str2);
	if (str1 == "A" or str1 == "ALL") {
		if (str2 == "T" or str2 == "TRUE") {
			if (ability) {
				for(i = 0; i < 72; i += 1) {
					achieve[i] = true;
				}
			}
			return true;
		} else if (str2 == "F" or str2 == "FALSE") {
			if (ability) {
				for(i = 0; i < 72; i += 1) {
					achieve[i] = false;
				}
			}
			return true;
		} else if (str2 == "") {
			if (ability) {
				achieve[0] = !achieve[0];
				for(i = 0; i < 72; i += 1) {
					achieve[i] = achieve[0];
				}
			}
			return true;
		}
	} else if (str1 != "" && str1 == string_digits(str1)) {
		num = floor(int64(str1));
		if (num >= 0 and num < 72) {
			if (str2 == "T" or str2 == "TRUE") {
				if (ability) achieve[num] = true;
				return true;
			} else if (str2 == "F" or str2 == "FALSE") {
				if (ability) achieve[num] = false;
				return true;
			} else if (str2 == "") {
				if (ability) achieve[num] = !achieve[num];
				return true;
			}
		}
	}
	
	return false;
};

TEST_FUNCTIONS.ROOM_SPD = function(__str, ability = true) {
	var str, num;
	
	str = string_upper(__str);
	if (str == "" or str == "N" or str == "NORMAL") {
		if (ability) {
			global.ROOM_SPEED = 50;
			room_speed = global.ROOM_SPEED;
			game_set_speed(global.ROOM_SPEED, gamespeed_fps);
		}
		return true;
	} else if (str == "F" or str == "FAST") {
		if (ability) {
			global.ROOM_SPEED = 100;
			room_speed = global.ROOM_SPEED;
			game_set_speed(global.ROOM_SPEED, gamespeed_fps);
		}
		return true;
	} else if (str == "S" or str == "SLOW") {
		if (ability) {
			global.ROOM_SPEED = 20;
			room_speed = global.ROOM_SPEED;
			game_set_speed(global.ROOM_SPEED, gamespeed_fps);
		}
		return true;
	} else if (str != "" && str == string_digits(str)) {
		num = floor(real(str));
		if (num >= 5 and num <= 60) {
			if (ability) {
				global.ROOM_SPEED = num;
				room_speed = global.ROOM_SPEED;
				game_set_speed(global.ROOM_SPEED, gamespeed_fps);
			}
			return true;
		}
	}
	return false;
};