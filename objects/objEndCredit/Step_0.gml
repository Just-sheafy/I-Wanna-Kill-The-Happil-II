var zx, temp;

if (!dead and (t >= 0 && (number_hit >= 0 || instance_exists(player)))) t += t_spd;
t_bound = max(t_bound, t-500);

if (t >= 5089 && t <= 5239) {
	if (layer_exists("Background"))
		layer_background_blend(layer_background_get_id(layer_get_id("Background")),
			make_color_rgb(255*(t-5089)/150, 255*(t-5089)/150, 255*(t-5089)/150));
}

if (number_hit >= 0) {
	if (t >= 1040 && t <= 1140) {
		if (layer_exists("Background3"))
			layer_background_alpha(layer_background_get_id(layer_get_id("Background3")), (1140-t)/100);
	}
	if (t >= 1954 && t <= 2004) {
		if (layer_exists("Background2"))
			layer_background_blend(layer_background_get_id(layer_get_id("Background2")),
				make_color_rgb(255, 64+191*(2004-t)/50, 64+191*(2004-t)/50));
	}
	if (t >= 2841 && t <= 2891) {
		if (layer_exists("Background2"))
			layer_background_blend(layer_background_get_id(layer_get_id("Background2")),
				make_color_rgb(255, 64+191*(t-2841)/50, 64+191*(t-2841)/50));
		if (layer_exists("Background3"))
			layer_background_alpha(layer_background_get_id(layer_get_id("Background3")), (t-2841)/50);
	}
	if (t >= 3730 && t <= 3780) {
		if (layer_exists("Background3"))
			layer_background_alpha(layer_background_get_id(layer_get_id("Background3")), (3780-t)/50);
	}
	if (t >= 4591 && t <= 4641) {
		if (layer_exists("Background2"))
			layer_background_alpha(layer_background_get_id(layer_get_id("Background2")), (4641-t)/50);
	}
	if (t >= 250) {
		with(player) frozen = false;
		if (!gameover && t >= 5830) {
			gameover = true;
			with(Boss04_55) instance_destroy();
			with(bullet) instance_destroy();
			
			instance_create_depth(0, 0, 150, Boss04_56);
			instance_create_depth(400, 304, 0, Boss04_57);
			with(player) kill_player(true);
			
			number_hit = -1;
			world.credit_played = true;
			exit;
		}
		
		if (number_hit >= 8 && t < 5830) {
			number_hit = -1;
			t_spd = 2;
			depth = 150;
			instance_create_depth(0, 0, 180, Boss04_56);
			instance_create_depth(400, 304, 0, Boss04_57);
			instance_create_depth(room_width/2, room_height/2, -80, Boss04_51);
			
			if (!world.items[1]) instance_create_layer(0, 0, "Player", MouseC);
			with(player) { visible = true; image_alpha = 0; }
			with(Boss04_55) { visible = true; image_alpha = 0; frozen = false; }
			
			if (world.HEALTH_ok) {
				zx = instance_create_depth(0, 0, -49, playerHealth);
				if (world.hp_before != -1) zx.hp = min(8, world.hp_before);
				else zx.hp = 8;
				zx.hpm = 8;
				world.hp_before = -1;
			}
			
	        zx = instance_create_depth(800, 0, -2000, StageGet);
	        zx.image_index = 68;
			var zx = instance_create_depth(0, 0, 0, soundEx2);
		    zx.M2 = world.Instance;
		    zx.M1 = audio_play_sound(global.stage04Bs4, 10, true, world.music_vol);
		    zx.Vol = 0;
		    zx.ang = 0;
		    audio_sound_gain(zx.M1, world.music_vol, 0);
		    with(world) {filePlaying = 24; curMusic = global.stage04Bs4; Instance = soundEx2.M1;}
			
			world.credit_played = true;
		}
		
		if (t < 4591) ALPHA_fade = min(1, ALPHA_fade + 0.02);
		else if (t <= 4641) ALPHA_fade = (4641-t)/50;
		else ALPHA_fade = 0;
	}
} else {
	ALPHA_fade = max(0, ALPHA_fade - 0.02);
	if (!gameover) {
		ALPHA = max(0.25, ALPHA-0.02);
		if (number_hit > -2) {
			number_hit -= 0.05;
			if (layer_exists("Background2"))
				layer_background_alpha(layer_background_get_id(layer_get_id("Background2")), 4*ALPHA-3);
			if (layer_exists("Background3"))
				layer_background_alpha(layer_background_get_id(layer_get_id("Background3")), 4*ALPHA-3);
			with(player) image_alpha = min(1, image_alpha+0.1);
			with(Boss04_55) image_alpha = min(1, image_alpha+0.1);
		}
		if (t >= 5830) {
			gameover = true;
			with(player) kill_player(true);
		}
	} else {
		depth = -100;
		ALPHA = min(1, ALPHA + 0.04);
	}
}