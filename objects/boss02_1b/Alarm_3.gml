var i, zx;

if (patt == -6) {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
	
	for(i=0; i<2; i+=1) {instance_create_depth(x+random_range(-147, 147), y+random_range(-175, 147), -5, Explo1);}
    audio_play_sound(sndExplo, 0, false, world.sound_vol);
	
    zx=instance_create_depth(400,352,-2,Boss02_4);
    zx.alarm[0] = 120;
    zx.qwer = "DAAAAARGHHHHH";
	
	with(block) image_index = 1;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs3);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
	
	patt += 1;
	alarm[3] = 30;
} else if (patt == -5) {
	audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
	
	patt += 1;
	alarm[3] = 30;
} else if (patt == -4) {
	Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
	
	for(i=0; i<2; i+=1) {instance_create_depth(x+random_range(-147, 147), y+random_range(-175, 147), -5, Explo1);}
    audio_play_sound(sndExplo, 0, false, world.sound_vol);
	
	instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
	
	block.image_index = 2;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs4);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
	
	patt += 1;
	alarm[3] = 30;
} else if (patt == -3) {
	audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
	
	patt += 1;
	alarm[3] = 30;
} else if (patt == -2) {
	Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
	
	for(i=0; i<2; i+=1) {instance_create_depth(x+random_range(-147, 147), y+random_range(-175, 147), -5, Explo1);}
    audio_play_sound(sndExplo, 0, false, world.sound_vol);
	
	instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
		
	block.image_index = 0;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), noone);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_black);
	}
	
	patt += 1;
	alarm[3] = 30;
} else if (patt == -1) {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
	
    if instance_exists(player) {
        world.re_nodie = false;
        saveControls();
        with(world) {
            saveEncrypt();
            saveDeaths();
        }
    }
    
    patt += 1;
    alarm[3] = 60;
} else if patt == 0 {
	if (world.screen_effect_enable) {
		zx = instance_create_depth(0, 0, 0, view_an4);
		zx.asdf = 1;
		zx.a = 0;
		zx.noise = 30;
		zx.noise_dec = 0.3;
		audio_play_sound(snd02_32, 0, false, world.sound_vol);
	}
	
    audio_play_sound(snd02_28, 0, false, world.sound_vol);
	zx = instance_create_depth(0, 0, -100, dark1);
	zx.alpha_dec = 0.02;
	
    block.image_index = 7;
	if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs5);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
	
    zx=instance_create_depth(400,352,-2,Boss02_4);
    zx.alarm[0] = 120;
    zx.qwer = "You Can Not Survive";
    instance_create_depth(0, 0, -3, Boss02_53);
    patt += 1;
    alarm[3] = 1440;
} else if patt <= 42 {
	if (patt == 21) {
	    zx=instance_create_depth(400,352,-2,Boss02_4);
	    zx.alarm[0] = 120;
	    zx.qwer = "DAAAAIE!!!!";
	}
	
    if !pat {
        Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
        audio_play_sound(snd02_21, 0, false, world.sound_vol);
        with(Boss02_2) {sprite_index = sprBoss02_3;}
        with(Boss02_3) {visible = false; crazy = 0;}
        pat = 1;
        alarm[3] = 15;
    } else {
        audio_stop_sound(Instance);
        with(Boss02_2) {sprite_index = sprBoss02_4;}
        with(Boss02_3) {visible = true; crazy = 1;}
        pat = 0;
        alarm[3] = 45;
    }
    patt += 1;
    if patt == 43 { alarm[3] = 120;}
} else if patt == 43 {
    instance_create_depth(0, 0, -100, light);
	Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(world) {filePlaying = -0.5; curMusic = global.None; audio_stop_sound(Instance);}
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
	
    for(i=0; i<2; i+=1) {instance_create_depth(x+random_range(-147, 147), y+random_range(-175, 147), -5, Explo1);}
    audio_play_sound(sndExplo, 0, false, world.sound_vol);
	
    block.image_index = 0;
    if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), noone);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_black);
	}
	
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 16;
    patt += 1;
    alarm[3] = 30;
} else if patt == 44 {
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
    audio_stop_sound(Instance);
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 60;
    zx.qwer = "NOOO";
    patt += 1;
    alarm[3] = 60;
} else if patt == 45 {
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    patt += 1;
    alarm[3] = 180;
} else if patt == 46 {
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 60;
    zx.qwer = "I CAN'T DIE";
    patt += 1;
    alarm[3] = 60;
} else if patt == 47 {
    with(Hamjung02Bs1) {alarm[0] = 0;}
    with(Hamjung02Bs2) {instance_destroy();}
    with(Boss02_3) {sprite_index = sprBoss02_57; image_speed = 0.3;}
    with(player) {
        instance_destroy(); var zx = instance_create_depth(x, y, depth, Boss02_60);
        zx.direction = point_direction(x, y, 400, 192); zx.speed = point_distance(x, y, 400, 192)/122;
    }
	with(playerHealth) {not_check = true;}
    rat = 1;
    audio_stop_sound(Instance);
    Instance = audio_play_sound(snd02_22, 0, true, world.sound_vol);
    patt += 1;
    alarm[3] = 90;
} else if patt == 48 {
    instance_create_depth(0, 0, -100, light);
    audio_stop_sound(Instance);
    with(Hamjung02Bs1) {instance_destroy();}
    with(Boss02_60) {instance_destroy(); instance_create_depth(x, y, depth, player);}
	with(playerHealth) {not_check = false;}
    with(Boss02_2) {crazy = 0;}
    with(Boss02_3) {sprite_index = sprBoss02_2; visible = false;}
    block.visible = false;
    for(i=0; i<3; i+=1) {instance_create_depth(x+random_range(-147, 147), y+random_range(-175, 147), -5, Explo1);}
    
	if (layer_exists("Tiles")) 
		layer_set_visible(layer_get_id("Tiles"), true);
    if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back02Bs6);
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	}
    if (layer_exists("Background2"))
		layer_background_visible(layer_background_get_id(layer_get_id("Background2")), false);
    if (layer_exists("Background3"))
		layer_background_visible(layer_background_get_id(layer_get_id("Background3")), false);
	
    rat = 0;
    audio_play_sound(sndExplo, 0, false, world.sound_vol);
    patt += 1;
    alarm[3] = 240;
} else if patt == 49 {
    with(Boss02_2) {sprite_index = sprBoss02_3; crazy = 1;}
    with(Boss02_3) {visible = false; crazy = 0;}
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    patt += 1;
    alarm[3] = 90;
} else if patt == 50 {
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
    audio_stop_sound(Instance);
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 60;
    zx.qwer = "DID YOU THINK...";
    patt += 1;
    alarm[3] = 60;
} else if patt == 51 {
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    patt += 1;
    alarm[3] = 60;
} else if patt == 52 {
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
    audio_stop_sound(Instance);
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 60;
    zx.qwer = "I WAS.....";
    patt += 1;
    alarm[3] = 60;
} else if patt == 53 {
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    patt += 1;
    alarm[3] = 30;
} else if patt == 54 {
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {visible = true; crazy = 1;}
    audio_stop_sound(Instance);
    zx = instance_create_depth(400, 352, -2, Boss02_4);
    zx.alarm[0] = 90;
    zx.qwer = "DEAD?!?!?!";
    audio_play_sound(snd02_28, 0, false, world.sound_vol);
    patt += 1;
    alarm[3] = 90;
} else if patt == 55 {
    with(Boss02_3) {sprite_index = sprBoss02_57; image_speed = 0.3;}
    Instance = audio_play_sound(snd02_22, 0, true, world.sound_vol);
    with(player) {
        instance_destroy(); var zx = instance_create_depth(x, y, depth, Boss02_60);
        zx.direction = point_direction(x, y, 400, 192); zx.speed = point_distance(x, y, 400, 192)/62;
    }
	with(playerHealth) {not_check = true;}
    rat = 1;
    patt += 1;
    alarm[3] = 30;
} else if patt == 56 {
    world.c = 1;
    instance_create_depth(0, 0, 0, Boss02_61);
    patt += 1;
    alarm[3] = 32;
} else if patt == 57 {
    with(Boss02_60) {instance_destroy();}
    instance_create_depth(0, 0, -100, dark2);
    audio_stop_sound(Instance);
    patt += 1;
    alarm[3] = 20;
} else if patt == 58 {
	with(playerHealth) {world.hp_before = hp;}
    room_goto(Stage02Bs5);
}