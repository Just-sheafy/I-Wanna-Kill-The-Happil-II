var i, temp;

blue_alpha = max(0, blue_alpha - 0.025);
green_alpha = max(0, green_alpha - 0.025);
yellow_alpha = max(0, yellow_alpha - 0.025);
red_alpha = max(0, red_alpha - 0.025);

if (is_dead) {
	blue_alpha = 0;
	green_alpha = 0;
	yellow_alpha = 0;
	red_alpha = 0;
	
	if (patt == 0) y = min(384, y+8);
	else if (patt >= 10 && patt < 260) {
		oy = min(628, oy+1);
		if (patt-3*floor(patt/3) == 0)
			y = oy + random_range(-1, 1);
		if (patt-10*floor(patt/10) == 0)
			audio_play_sound(sndSr01_5, 0, false, world.sound_vol);
		patt += 1;
	} else if (patt == 260) {
		patt = -1;
		audio_play_sound(sndSr01_4, 0, false, world.sound_vol);
		instance_create_depth(0, 0, -15, dark6);
	}
	exit;
}

if (!action) {
	vspd += grav;
	x += hspd;
	y += vspd;
}

if (y < 384) {
	angle_time += 1;
	if (angle_time < 15) angle = 0;
	else if (angle_time < 30 || (angle_time >= 45 && angle_time < 60)) angle = 30;
	else if (angle_time < 45) angle = 60;
	else { angle_time = 0; angle = 0; }
}

if (x <= 100) {
	hspd = abs(hspd);
} else if (x >= room_width - 100) {
	hspd = -abs(hspd);
}
if (y >= 384 && vspd > 0) {
	audio_play_sound(sndSr01_1, 0, false, world.sound_vol);
	if (instance_exists(player)) {
		bounce += 1;
		with(Boss01Sr_1) { if (AIM >= 8) lose(1); }
	}
	vspd = -10;
	
	if (bounce < bounce_num) {
		y -= abs(vspd);
	} else {
		var l = ds_list_create();
		
		action = true;
		
		for(i=0; i<5; i+=1) {
			if (pattern[i]) ds_list_add(l, i);
		}
		if (ds_list_size(l) > 0) {
			ds_list_shuffle(l);
			if (ds_list_size(l) > 1 && pattern_before != -1)
				ds_list_delete_element(l, pattern_before);
			temp = ds_list_find_value(l, 0);
			pattern_before = temp;
			if (temp != 3) angle = 30;
			
			if (temp == 0) { // tongue
				green_alpha = 1;
				alarm[0] = 75;
			} else if (temp == 1) { // fire
				red_alpha = 1;
				alarm[1] = 75;
			} else if (temp == 2) { // stomp
				yellow_alpha = 1;
				alarm[2] = 75;
			} else if (temp == 3) { // clone
				blue_alpha = 1;
				green_alpha = 1;
				yellow_alpha = 1;
				red_alpha = 1;
				alarm[3] = 50;
			} else { // baby yoshi
				blue_alpha = 1;
				alarm[4] = 75;
			}
		} else action = false;
		
		y = 384;
		bounce = 0;
		
		ds_list_destroy(l);
	}
}

if (world.curMusic == global.stage01Sr2) {
	var val = 0;
	
	if (audio_is_playing(world.Instance))
		val = audio_sound_get_track_position(world.Instance);
	if (val >= 13.17) {
		with(world) {
            if filePlaying != 3.98 and curMusic != global.stage01Sr2Loop {
                audio_stop_sound(Instance);
                filePlaying = 3.98;
                curMusic = global.stage01Sr2Loop;
                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
            }
        }
		
		if (val > 0) audio_sound_set_track_position(world.Instance, val - 13.17);
		audio_sound_pitch(world.Instance, world.music_sp);
	}
}