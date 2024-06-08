var zx, temp, xxx, yyy;

if (patt == 8) {
	if (global.practice == 6) {
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
		room_goto(Stage04Bs);
		exit;
	}
	
    with(Boss04_31) active = false;
    if (instance_exists(player)) {
        temp = instance_create_depth(-32, -32, depth-1, Boss04_29);
        temp.speed = point_distance(-32, -32, 400-72, 304-72)/150;
        temp.direction = point_direction(-32, -32, 400-72, 304-72);
        temp = instance_create_depth(800+32, -32, depth-1, Boss04_29);
        temp.image_index = 1;
        temp.speed = point_distance(800+32, -32, 400+72, 304-72)/150;
        temp.direction = point_direction(800+32, -32, 400+72, 304-72);
        
        audio_play_sound(sndCherry, 0, false, world.sound_vol);
        patt += 1;
        alarm[3] = 150;
    }
} else if (patt == 9) {
	if (!instance_exists(player)) exit;
	
    with(Boss04_29) {
        speed = 0; asdf = 1;
    }
    sprite_index = sprBoss04_32;
    audio_stop_sound(world.Instance);
    world.Instance = audio_play_sound(global.stage04BsDefeat, 10, false, world.music_vol);
    world.filePlaying = 21.5;
	world.curMusic = global.stage04BsDefeat;
    
    // change background
    for(i=2; i<=8; i+=1) {
		if (layer_exists("Background" + string(i)))
			layer_set_visible(layer_get_id("Background" + string(i)), false);
	}
	if (layer_exists("Tiles"))
		layer_set_visible(layer_get_id("Tiles"), false);
	if (layer_exists("Tiles2"))
		layer_set_visible(layer_get_id("Tiles2"), false);
    with(object666) visible = false;
    with(Hamjung02Bs1) instance_destroy();
    with(Hamjung02Bs2) instance_destroy();
    with(Hamjung04Bs1) instance_destroy();
    with(Hamjung04Bs2) instance_destroy();
    with(Hamjung04Bs3) instance_destroy();
    with(Hamjung04Bs4) instance_destroy();
    with(kill_character) instance_destroy();
    
	if (layer_exists("Background"))
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_white);
	if (layer_exists("Background2"))
		layer_set_visible(layer_get_id("Background2"), true);
    
    // change blocks
    with(block) {
        image_index = 0; image_alpha = 1;
    }
    with(block) {
        sprite_index = block04Bs1;
        if (x < 384) image_index = 0;
        else if (x > 384) image_index = 1;
        else image_index = 2;
    }
    
    instance_create_depth(0, 0, -100, light);
    
    patt += 1;
    alarm[3] = 5;
} else if (patt < 57) {
    if (patt mod 2 == 0) instance_create_depth(400+random_range(-80, 80), 304+random_range(-72, 72), -5, Explo1);
    
    if (patt >= 26 and patt < 36) {
		if (layer_exists("Background2"))
			layer_background_alpha(layer_background_get_id(layer_get_id("Background2")),
				max(0, layer_background_get_alpha(layer_background_get_id(layer_get_id("Background2")))));
        with(block) {
            if (image_alpha > 0) image_alpha -= 0.1;
        }
        alpha += 0.1;
        with (Boss04_29) alpha += 0.1;
    } else if (patt >= 45 and patt < 55) {
        if (patt == 45) {
			dead = true;
			with(Boss04_29) depth = -10;
            light_obj = instance_create_depth(0, 0, -8, light);
			light_obj.depth = -8;
            light_obj.image_alpha = 0;
            light_obj.alarm[0] = 0;
        }
        light_obj.image_alpha += 0.1;
    }
	
	with(Explo1) { image_blend = make_color_rgb(255*(1-Boss04_1.alpha), 255*(1-Boss04_1.alpha), 255*(1-Boss04_1.alpha)); }
    
    patt += 1;
    alarm[3] = 5;
} else if (patt == 57) {
    temp = instance_create_depth(0, 0, -101, dark2);
    temp.image_alpha = 0.02;
    temp.alpha_speed = 0.02
	
	if (next_avoidance == 1) {
		with(player) {
			if (Gravity) { flip_grav(false); y = room_height - y; }
		}
	} else {
		with(player) {
			if (!Gravity) { flip_grav(false); y = room_height - y; }
		}
	}
    
    patt += 1;
    alarm[3] = 50;
} else if (patt == 58) {
    with(Boss04_29) instance_destroy();
    with(light) instance_destroy();
    with(dark2) instance_destroy();
    // audio_stop_sound(world.Instance);
    alpha = 0;
    sprite_index = sprBoss04_15;
    image_index = 0; image_speed = 0.5;
	dead = false; trans = true; is_end = true;
	if (layer_exists("Background2"))
		layer_background_visible(layer_background_get_id(layer_get_id("Background2")), false);
	if (layer_exists("Background"))
		layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_black);
    
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 15;
    
    audio_play_sound(snd04_3, 0, false, world.sound_vol);
    
    xxx = xx - room_width/2;
    yyy = yy - room_height/2;
    instance_create_depth(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
        room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), -10, Boss04_21);
    
    trans_patt = 0;
    patt += 1;
    alarm[3] = 75;
} else if (patt == 59) {
    audio_play_sound(snd04_23, 0, false, world.sound_vol);
    instance_create_depth(400, 304, 8, Boss04_19);
    
    patt += 1;
    alarm[3] = 15;
} else if (patt == 60) {
    temp = instance_create_depth(0, 0, -100, Boss04_18);
    temp.alarm[0] = 165;
    temp.radius = 350;
    temp = instance_create_depth(0, 0, 0, view_an5);
    temp.asdf = 165;
    temp.amplitude = 8;
	
	if (instance_exists(player)) {
		instance_create_depth(random(room_width/2), (player.Gravity)? -120 : room_height+120, 9, Boss04_59);
		instance_create_depth(room_width/2+random(room_width/2), (player.Gravity)? -120 : room_height+120, 9, Boss04_59);
		with(Boss04_59) {
			sprite_index = sprBoss04_42;
			speed = point_distance(x, y, 400, 304)/180;
			direction = point_direction(x, y, 400, 304);
		}
		temp = instance_create_depth(random(room_width), (player.Gravity)? -240 : room_height+240, 9, Boss04_59);
		temp.speed = point_distance(x, y, 400, 304)/240;
		temp.direction = point_direction(x, y, 400, 304);
	}
    
    patt += 1;
    alarm[3] = 75;
} else if (patt == 61) {
    if (!instance_exists(player)) exit;
    
    with(player) {
        instance_destroy(); zx = instance_create_depth(x, y, depth, Boss02_60);
        zx.direction = point_direction(x, y, 400, 304); zx.speed = point_distance(x, y, 400, 304)/47;
    }
	with(playerHealth) {world.hp_before = hp;}
    with(Boss04_18) not_check = true;
    with(view_an5) not_check = true;
    
    patt += 1;
    alarm[3] = 45;
} else if (patt == 62) {
    with(Boss02_60) {instance_destroy();}
    patt += 1;
    alarm[3] = 10;
} else if (patt == 63) {
    if (next_avoidance == 1) {
        zx = instance_create_depth(0, 0, 0, soundEx);
        zx.M1 = world.Instance;
        zx.M2 = audio_play_sound(global.contrary, 10, false, world.music_vol);
        zx.nope = 1;
        zx.arck = 0;
		world.Instance = zx.M1;
        with(world) {filePlaying = 19; curMusic = global.contrary;}
    } else {
        zx = instance_create_depth(0, 0, 0, soundEx);
        zx.M1 = world.Instance;
        zx.M2 = audio_play_sound(global.catastrophe, 10, false, world.music_vol);
        zx.nope = 1;
        zx.arck = 0;
		world.Instance = zx.M1;
        with(world) {filePlaying = 20; curMusic = global.catastrophe;}
    }
    
    patt += 1;
    alarm[3] = 15;
} else if (patt == 64) {
    instance_create_depth(0, 0, -100, dark2);
    patt += 1;
    alarm[3] = 20;
} else {
	world.var_temp = 3;
    if (next_avoidance == 1)
        room_goto(Stage04Bs2);
    else
        room_goto(Stage04Bs3);
}

/* else if (patt == 64) {
	instance_create_depth(0, 0, -11, Boss04_34);
	
	patt += 1;
	alarm[3] = 75;
} else if (patt == 65) {
	if (!instance_exists(player)) exit;
	
	with(player) instance_destroy();
	with(playerHealth) {not_check = true;}
	if (next_avoidance == 1) {
        zx = instance_create_depth(0, 0, 0, soundEx);
        zx.M1 = world.Instance;
        zx.M2 = audio_play_sound(global.contrary, 10, false, world.sound_vol);
        zx.nope = 1;
        zx.arck = 0;
		world.Instance = zx.M1;
        with(world) {filePlaying = 19; curMusic = global.contrary;}
    } else {
        zx = instance_create_depth(0, 0, 0, soundEx);
        zx.M1 = world.Instance;
        zx.M2 = audio_play_sound(global.catastrophe, 10, false, world.sound_vol);
        zx.nope = 1;
        zx.arck = 0;
		world.Instance = zx.M1;
        with(world) {filePlaying = 20; curMusic = global.catastrophe;}
    }
    
    patt += 1;
    alarm[3] = 35;
} else {
	with(playerHealth) {world.hp_before = hp;}
	world.var_temp = 3;
    if (next_avoidance == 1)
        room_goto(Stage04Bs2);
    else
        room_goto(Stage04Bs3);
}