var i, temp, dir;

if (patt == 0) {
	if (global.practice == 9) {
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
	
	mode_time = 50;
	instance_create_depth((xx == 0)? 800:0, yy, 0, Boss04_68);
	
	patt += 1;
	if (instance_exists(player)) alarm[2] = 50;
} else if (patt == 1) {
	mode = 6;
	mode_time = 0;
	mode_time_v = 0;
    audio_play_sound(snd04_3, 0, false, world.sound_vol);
    
	instance_create_depth(0, 0, -100, surf_mobius);
    instance_create_depth(xx, yy, -10, Boss04_21);
    
    patt += 1;
    if (instance_exists(player)) alarm[2] = 15;
} else if (patt < 23) {
	audio_play_sound(snd02_11, 0, false, world.sound_vol);
	
	for(i=0; i<4; i+=1) {
		temp = instance_create_depth(xx, yy, 0, Boss04_65);
		if (patt - floor(patt/2)*2 == 1) temp.x = room_width-temp.x;
		temp.image_xscale = 1/8; temp.image_yscale = 1/8;
		temp.scale = 1/4;
		if (instance_exists(player))
			temp.direction = point_direction(temp.x, temp.y, player.x, player.y);
		else temp.direction = point_direction(temp.x, temp.y, 0, 0);
		temp.alarm[11] = 240;
		temp.speed = 5 - abs(i-1.5);
		temp.direction_speed = i*2/3-1;
		temp.outside = false;
		temp.mobius = true;
	}
	
	if (patt == 3 or patt == 8 or patt == 13 or patt == 16 or patt == 19 or patt == 22) {
		audio_play_sound(snd04_48, 0, false, world.sound_vol);
		dir = random(360);
		if (instance_exists(player)) {
			temp = instance_create_depth(player.x+lengthdir_x(1200, dir), player.y+lengthdir_y(1200, dir), -10, Boss04_69);
		} else temp = instance_create_depth(lengthdir_x(1200, dir), lengthdir_y(1200, dir), -10, Boss04_69);
		temp.image_angle = dir+180;
		temp.asdf = true;
		if (patt == 16 or patt == 19) { temp.patt = -3; temp.time = 6; }
		if (patt == 22) { temp.patt = -12; temp.time = 4; }
		temp.alarm[11] = 8;
	}
	
	patt += 1;
	if (instance_exists(player)) alarm[2] = 35;
} else if (patt == 23) {
	mode = 7;
	mode_time = 0;
	mode_time_v = 0;
	
	with(Boss04_65) { event_perform(ev_alarm, 11); alarm[11] = 0; }
	with(surf_mobius) destroy = true;
	
	patt += 1;
	if (instance_exists(player)) alarm[2] = 25;
} else if (patt == 24) {
	audio_play_sound(snd04_47, 0, false, world.sound_vol);
	
	with(Boss04_55) danger = 1;
	instance_create_layer(400, 304, "Player", Boss04_70);
	
	patt += 1;
	alarm[2] = 50;
} else if (patt == 25) {
	if (instance_exists(player) && global.practice == 10) {
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
	
	with(Boss04_68) instance_destroy();
	
	patt = 0;
	if (instance_exists(player)) alarm[3] = 900;
}