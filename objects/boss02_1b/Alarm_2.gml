var i, zx;

if patt == 0 {
	if (world.screen_effect_enable) {
		zx = instance_create_depth(0, 0, 0, view_an4);
		zx.asdf = 1;
		zx.a = 0;
		zx.noise = 30;
		zx.noise_dec = 0.5;
		audio_play_sound(snd02_31, 0, false, world.sound_vol);
	}
	
    audio_play_sound(snd02_4, 0, false, world.sound_vol);
	zx = instance_create_depth(0, 0, -100, dark1);
	zx.alpha_dec = 0.02;
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 60;
    zx.qwer = "You Must Die";
    switch(choose(0, 1, 2)) {
        case 0: patt = 0.5;
                break;
        case 1: patt = 5;
                break;
        case 2: patt = 8;
                break;
    }
	
	if (global.practice == 5) patt = 0.5;		// Exor
	else if (global.practice == 6) patt = 5;	// Boshy
	else if (global.practice == 7) patt = 8;	// Dark Boshy
	else if (global.practice == 8) patt = 2;	// Dark Boo
    alarm[2] = 60;
    
    if (global.practice < 0 && instance_exists(player)) {
        world.re_nodie = false;
        saveControls();
        with(world) {
            saveEncrypt();
            saveDeaths();
        }
    }
} else if patt == 0.5 {
    instance_create_depth(0, 0, -100, light);
    if (!beat_exor and !beat_boshy and !beat_darkboshy) {
        zx = instance_create_depth(32, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
        zx = instance_create_depth(576, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
    }
	
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    block.image_index = 3;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs7);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
    patt += 0.5;
    alarm[2] = 15;
} else if patt == 1 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; visible = true; crazy = 1;}
    patt += 0.5;
    alarm[2] = 45;
} else if patt == 1.5 { // Exor
    if (instance_exists(player)) instance_create_depth(player.x, 0, -3, Boss02_33);
    qwer = 17;
    beat_exor = true;
    if (beat_exor + beat_boshy + beat_darkboshy == 1) patt = 2;
    else if (beat_boshy + beat_darkboshy <= 1) {
        if (beat_boshy) patt = 8;
        else if (beat_darkboshy) patt = 5;
        else patt = choose(5, 8);
    } else patt = 11;
}
////////////////////////////////////////////////////////////////////
else if patt == 2 {
    instance_create_depth(0, 0, -100, light);
    if (!beat_exor and !beat_boshy and !beat_darkboshy) {
        zx = instance_create_depth(32, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
        zx = instance_create_depth(576, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
    }
	
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    block.image_index = 6;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs10);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
    patt += 1;
    alarm[2] = 15;
} else if patt == 3 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; visible = true; crazy = 1;}
    patt += 1;
    alarm[2] = 30;
} else if patt == 4 { // Dark Boo
    instance_create_depth(400, 240, -2, Boss02_46);
    qwer = 23;
    if (beat_exor) patt = choose(5, 8);
    else if (beat_boshy) patt = choose(0.5, 8);
    else patt = choose(0.5, 5);
}
////////////////////////////////////////////////////////////////////
else if patt == 5 {
    instance_create_depth(0, 0, -100, light);
    if (!beat_exor and !beat_boshy and !beat_darkboshy) {
        zx = instance_create_depth(32, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
        zx = instance_create_depth(576, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
    }
	
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    block.image_index = 4;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs8);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
    patt += 1;
    alarm[2] = 15;
} else if patt == 6 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; visible = true; crazy = 1;}
    patt += 1;
    alarm[2] = 30;
} else if patt == 7 { // Boshy
    if (instance_exists(player)) instance_create_depth(player.x, -100, -2, Boss02_38);
    qwer = 19;
    beat_boshy = true;
    if (beat_exor + beat_boshy + beat_darkboshy == 1) patt = 2;
    else if (beat_exor + beat_darkboshy <= 1) {
        if (beat_exor) patt = 8;
        else if (beat_darkboshy) patt = 0.5;
        else patt = choose(0.5, 8);
    } else patt = 11;
}
////////////////////////////////////////////////////////////////////
else if patt == 8 {
    instance_create_depth(0, 0, -100, light);
    if (!beat_exor and !beat_boshy and !beat_darkboshy) {
        zx = instance_create_depth(32, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
        zx = instance_create_depth(576, 80, -1, Boss02_36);
        zx.ox = zx.x; zx.oy = zx.y;
    }
	
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    block.image_index = 5;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs9);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
    patt += 1;
    alarm[2] = 15;
} else if patt == 9 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; visible = true; crazy = 1;}
    patt += 1;
    alarm[2] = 30;
} else if patt == 10 { // Dark Boshy
    instance_create_depth(400, 464, -2, Boss02_41);
    qwer = 21;
    beat_darkboshy = true;
    if (beat_exor + beat_boshy + beat_darkboshy == 1) patt = 2;
    else if (beat_exor + beat_boshy <= 1) {
        if (beat_exor) patt = 5;
        else if (beat_boshy) patt = 0.5;
        else patt = choose(0.5, 5);
    } else patt = 11;
}
////////////////////////////////////////////////////////////////////
else if patt == 11 {
    with(world) {filePlaying = 6; curMusic = global.stage02Bs1;}
	with(playerHealth) {world.hp_before = hp;}
    world.c = 1;
    room_goto(Stage02Bs4);
}