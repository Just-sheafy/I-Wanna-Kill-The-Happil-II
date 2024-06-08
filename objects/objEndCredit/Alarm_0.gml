var temp;

if (global.practice < 0) {
	instance_create_depth(400, 384, -1, Boss04_55);
	instance_create_depth(400, 364, -2, player);
	with(Boss04_55) { frozen = true; visible = false; }
	with(player) { frozen = true; visible = false; }
} else {
	alarm[1] = 0;
	alarm[2] = 0;
	ALPHA = 0.25;
	
	with(world) {
		if filePlaying != 24 and curMusic != global.stage04Bs4 {
			audio_stop_channel(0);
			filePlaying = 24;
			curMusic = global.stage04Bs4;
			Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
		}
	}
	
	instance_create_depth(400, 384, -1, Boss04_55);
	instance_create_depth(400, 364, -2, player);
	temp = instance_create_depth(0, 0, 180, Boss04_56);
	temp.alpha = 1;
	instance_create_depth(room_width/2, room_height/2, -80, Boss04_51);
	
	if (global.practice <= 9) {
		// Health Sword ~ just before Mobius
		with(world) audio_sound_set_track_position(Instance, 0);
		
		instance_create_depth(400, 304, 0, Boss04_57);
	} else if (global.practice == 10) {
		// Mobius
		with(world) audio_sound_set_track_position(Instance, 26.7);
		
		temp = instance_create_depth(choose(0, 800), 304 + 495, 0, Boss04_57);
		with(temp) {
			mode = 5;
			mode_time = -1;
			
			scale = 3;
			alpha = 1;
			xx = x;
			yy = y;
			zz = 0;
			
			patt = 0;
			alarm[0] = 0;
			event_perform(ev_alarm, 2);
		}
	} else if (global.practice == 11) {
		// Three Lasers
		with(world) audio_sound_set_track_position(Instance, 43.2);
		
		temp = instance_create_depth(choose(0, 800), -200, 0, Boss04_57);
		with(temp) {
			mode = 7;
			
			scale = 3;
			alpha = 1;
			xx = x;
			yy = y;
			zz = 0;
			
			patt = 24;
			alarm[0] = 0;
			event_perform(ev_alarm, 2);
		}
	} else if (global.practice == 12) {
		// Two twos ~ Face Attack
		with(world) audio_sound_set_track_position(Instance, 62.2);
		
		temp = instance_create_depth(choose(0, 800), -200, 0, Boss04_57);
		with(temp) {
			mode = 7;
			
			scale = 3;
			alpha = 1;
			xx = x;
			yy = y;
			zz = 0;
			
			patt = 0;
			alarm[0] = 0;
			event_perform(ev_alarm, 3);
		}
	} else if (global.practice == 13) {
		// ONE
		with(world) audio_sound_set_track_position(Instance, 101.6);
		
		temp = instance_create_depth(400, -200, 0, Boss04_57);
		with(temp) {
			mode = 7;
			
			scale = 3;
			alpha = 1;
			xx = x;
			yy = y;
			zz = 2;
			
			patt = 0;
			alarm[0] = 0;
			event_perform(ev_alarm, 4);
		}
	} else if (global.practice == 14) {
		// GO! ~ FATAL ERROR
		with(world) audio_sound_set_track_position(Instance, 125.1);
		
		temp = instance_create_depth(400, -200, 0, Boss04_57);
		with(temp) {
			mode = 7;
			
			scale = 3;
			alpha = 1;
			xx = x;
			yy = y;
			zz = 2;
			
			patt = 2;
			alarm[0] = 0;
			event_perform(ev_alarm, 4);
		}
	}
	
	t = t_bound;
	t_spd = 2;
	ALPHA = 0.25;
	number_hit = -2;
	depth = 150;
	if (!world.items[1]) instance_create_layer(0, 0, "Player", MouseC);
			
	if (world.HEALTH_ok) {
		var zx = instance_create_depth(0, 0, -49, playerHealth);
		if (world.hp_before != -1) zx.hp = min(8, world.hp_before);
		else zx.hp = 8;
		zx.hpm = 8;
		world.hp_before = -1;
	}
}

with(world) {
	if (!credit_loaded) {
		credit_loaded = true;
		sprite_prefetch(spr_credit_screen);
	}
}