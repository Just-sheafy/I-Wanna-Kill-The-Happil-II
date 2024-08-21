var zx;

if patt == 0 {
    // Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    instance_create_depth(x, y, 1, Boss02_3);
    with(Boss02_2) {sprite_index = sprBoss02_3; crazy = 1;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 30;
} else if patt == 1 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    audio_play_sound(snd02_4, 0 ,false);
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 90;
    zx.qwer = "DIE DIE DIE DIE";
    patt += 1;
    alarm[0] = 90;
} else if patt == 2 {
    instance_create_depth(0, 0, -100, light);
    instance_create_depth(16, 0, -1, Boss02_5);
    // instance_create_depth(784, 0, -1, Boss02_5);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 60;
    zx.qwer = "You Will Die";
    with(block) image_index = 1;
	instance_create_depth(0, 0, 450, Boss02_74);
	if (layer_exists("Background")) {
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
    zx = instance_create_depth(x, y, -10, Boss02_n);
    zx.sid = id;
    patt += 1;
	// alarm[0] = 60;
    alarm[2] = 60;
} else if patt == 3 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 4 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_9; visible = true;}
    patt += 1;
    alarm[0] = 30;
} else if patt <= 7 {
    instance_create_depth(x, y, -1, Boss02_8);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[0] = 15;
} else if patt == 8 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[0] = 15;
} else if patt == 10 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt <= 15 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    patt += 1;
    alarm[0] = 15;
} else if patt == 16 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[0] = 15;
} else if patt == 18 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 1;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 19 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 20 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_12; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 21 {
    instance_create_depth(x, y, -2, Boss02_10);
    patt += 1;
    alarm[0] = 15;
} else if patt == 22 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 23 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 24 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 25 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_14; visible = true;}
    patt += 1;
    alarm[0] = 30;
} else if patt <= 27 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_14;
    zx.image_speed = 1/5;
    zx.image_xscale = 2;
    zx.image_yscale = 2;
    patt += 1;
    alarm[0] = 15;
} else if patt == 28 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 29 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 30 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    zx.image_xscale = 4;
    zx.image_yscale = 4;
    patt += 1;
    alarm[0] = 15;
} else if patt == 31 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 32 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 3;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 33 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 34 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_12; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 35 {
    instance_create_depth(x, y, -2, Boss02_10);
    patt += 1;
    alarm[0] = 15;
} else if patt == 36 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 37 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 38 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 39 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_16; visible = true;}
    patt += 1;
    alarm[0] = 30;
} else if patt <= 42 {
    instance_create_depth(x, y, -1, Boss02_14);
    patt += 1;
    alarm[0] = 15;
} else if patt == 43 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[0] = 15;
} else if patt == 45 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt <= 50 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    patt += 1;
    alarm[0] = 15;
} else if patt == 51 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[0] = 15;
} else if patt == 53 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 5;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 54 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 55 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_12; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 56 {
    instance_create_depth(x, y, -2, Boss02_10);
    patt += 1;
    alarm[0] = 15;
} else if patt == 57 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 58 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 59 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 60 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_18; visible = true;}
    patt += 1;
    alarm[0] = 30;
} else if patt <= 64 {
    zx = instance_create_depth(x, y, -1, Boss02_16);
	if (hammer_left >= 2) zx.hspeed = 3;
	else if (hammer_right >= 2) zx.hspeed = -3;
	else if (choose(0, 1)) {
		zx.hspeed = 3;
		hammer_right += 1;
	} else {
		zx.hspeed = -3;
		hammer_left += 1;
	}
    patt += 1;
    alarm[0] = 15;
} else if patt == 65 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[0] = 15;
} else if patt == 67 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt <= 72 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    patt += 1;
    alarm[0] = 15;
} else if patt == 73 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 2;
    alarm[0] = 15;
} else if patt == 75 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 7;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 76 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    with(Boss02_5) {instance_destroy();}
    with(Boss02_6) {instance_destroy();}
    with(Boss02_22) {instance_destroy();}
    with(Boss02_23) {instance_destroy();}
    patt += 1;
    alarm[0] = 15;
} else if patt == 77 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_12; visible = true;}
    patt += 1;
    alarm[0] = 15;
} else if patt == 78 {
    instance_create_depth(x, y, -2, Boss02_10);
    patt += 1;
    alarm[0] = 15;
} else if patt == 79 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    with(Boss02_16) {instance_destroy();}
    block.image_index = 0;
	with(Boss02_74) instance_destroy();
	if (layer_exists("Background")) {
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_black);
	}
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    patt += 1;
    alarm[0] = 15;
} else if patt == 80 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    patt += 1;
    alarm[0] = 30;
} else if patt == 81 {
    if (global.practice == 1) {
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
	
	instance_create_depth(400, 124, -2, Boss02_17);
    if (instance_exists(player)) {
        if (player.x >= 400) instance_create_depth(192, 488, -2, Boss02_20);
        else instance_create_depth(608, 488, -2, Boss02_20);
    } else instance_create_depth(choose(192, 608), 488, -2, Boss02_20);
    patt = 0;
    alarm[1] = 550;
}