var i, zx;

if patt == 0 {
    if (global.practice == 2) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage02Bs);
		exit;
	}
	
	if (global.practice <= 0) {
	    instance_create_depth(0, 0, -100, light);
	    zx = instance_create_depth(0, 0, 0, view_an2);
	    zx.asdf = 16;
	}
    with(block) {
		image_index = 9;
		if (y == 576) {
			visible = false;
			var temp = instance_create_depth(x+16, y+16, depth-1, Hamjung02Bs4);
			temp.image_angle = 180;
			temp.block_id = id;
			temp.patt = -temp.x/8;
		}
	}
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs14);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
		layer_background_xscale(layer_background_get_id(layer_get_id("Background")), 608 / 248);
		layer_background_yscale(layer_background_get_id(layer_get_id("Background")), 608 / 248);
		layer_hspeed(layer_get_id("Background"), -1);
	}
	if (layer_exists("Background4")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background4")), back02Bs13);
		layer_background_blend(layer_background_get_id(layer_get_id("Background4")), c_white);
		layer_background_xscale(layer_background_get_id(layer_get_id("Background4")), 608 / 248);
		layer_background_yscale(layer_background_get_id(layer_get_id("Background4")), 608 / 248);
		layer_y(layer_get_id("Background4"), 150);
		layer_hspeed(layer_get_id("Background4"), -0.1);
	}
    // instance_create_depth(0, 0, -1, Boss02_22);
    patt += 1;
    alarm[3] = 60;
} else if patt == 1 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[1] = 15;
} else if patt == 2 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_26; visible = true;}
    patt += 1;
    alarm[1] = 30;
} else if patt <= 4 {
    instance_create_depth(x, y, -2, Boss02_24);
    patt += 1;
    alarm[1] = 15;
} else if patt == 5 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[1] = 15;
} else if patt == 7 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_28; visible = true; image_speed = 0.5;}
    patt += 1;
    alarm[1] = 15;
} else if patt <= 12 {
    instance_create_depth(x, y, -2, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[1] = 15;
} else if patt == 13 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[1] = 15;
} else if patt == 15 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 9;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 16 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[1] = 15;
} else if patt == 17 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_29; visible = true; image_speed = 0.3;}
    patt += 1;
    alarm[1] = 30;
} else if patt <= 22 {
    instance_create_depth(x, y, -2, Boss02_26);
    patt += 1;
    alarm[1] = 15;
} else if patt == 23 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 3;
    alarm[1] = 15;
} else if patt == 26 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_28; visible = true; image_speed = 0.5;}
    patt += 1;
    alarm[1] = 15;
} else if patt <= 31 {
    instance_create_depth(x, y, -2, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[1] = 15;
} else if patt == 32 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[1] = 15;
} else if patt == 34 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 11;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 35 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[1] = 15;
} else if patt == 36 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_33; visible = true; image_speed = 0.3;}
    patt += 1;
    alarm[1] = 30;
} else if patt <= 37 {
    for(i=0; i<11; i+=1) {instance_create_depth(x, 640, -1, Boss02_30);}
    patt += 1;
    alarm[1] = 15;
} else if patt == 38 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[1] = 15;
} else if patt == 39 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_28; visible = true; image_speed = 0.5;}
    patt += 1;
    alarm[1] = 15;
} else if patt <= 44 {
    instance_create_depth(x, y, -2, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[1] = 15;
} else if patt == 45 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[1] = 15;
} else if patt == 47 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 13;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 48 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[1] = 15;
} else if patt == 49 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_34; visible = true; image_speed = 0.3;}
    patt += 1;
    alarm[1] = 30;
} else if patt == 50 {
    for(i=0; i<3; i+=1) {instance_create_depth(64+336*i, 304, -1, Boss02_31);}
    patt += 1;
    alarm[1] = 15;
} else if patt == 51 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[1] = 15;
} else if patt == 52 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_28; visible = true; image_speed = 0.5;}
    patt += 1;
    alarm[1] = 15;
} else if patt <= 57 {
    instance_create_depth(x, y, -2, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[1] = 15;
} else if patt == 58 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[1] = 15;
} else if patt == 60 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 15;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 61 {
    if (global.practice == 3) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage02Bs);
		exit;
	}
	
    with(Boss02_22) {instance_destroy();}
    with(Boss02_23) {instance_destroy();}
    with(Hamjung02Bs4) {instance_destroy();}
	block.visible = true;
    block.image_index = 0;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), noone);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_black);
	}
	if (layer_exists("Background4")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background4")), noone);
		layer_background_blend(layer_background_get_id(layer_get_id("Background4")), c_black);
	}
    audio_play_sound(snd02_14, 0, false, world.sound_vol);
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    patt += 1;
    alarm[1] = 30;
} else if patt <= 63 {
    audio_play_sound(snd02_14, 0, false, world.sound_vol);
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    patt += 1;
    alarm[1] = 30;
} else if patt == 64 {
    with(Boss02_3) {sprite_index = sprBoss02_57; image_speed = 0.3;}
    Instance = audio_play_sound(snd02_22, 0, true, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, soundEx);
    zx.M1 = world.Instance;
    zx.M2 = audio_play_sound(global.stage02Bs2, 10, true, 0);
    zx.nope = 1;
    zx.arck = 0;
    with(player) {
        instance_destroy(); zx = instance_create_depth(x, y, depth, Boss02_60);
        zx.direction = point_direction(x, y, 400, 192); zx.speed = point_distance(x, y, 400, 192)/62;
    }
    with(world) {filePlaying = 7; curMusic = global.stage02Bs2;}
	with(playerHealth) {not_check = true;}
    pat = 1;
    patt += 1;
    alarm[1] = 30;
} else if patt == 65 {
    world.c = 1;
    instance_create_depth(0, 0, 0, Boss02_61);
    patt += 1;
    alarm[1] = 32;
} else if patt == 66 {
    with(Boss02_60) {instance_destroy();}
    instance_create_depth(0, 0, -100, dark2);
    audio_stop_sound(Instance);
    patt += 1;
    alarm[1] = 20;
} else if patt == 67 {
    room_goto(Stage02Bs2);
	with(playerHealth) {world.hp_before = hp;}
}