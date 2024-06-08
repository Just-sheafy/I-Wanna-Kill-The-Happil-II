var i, j, temp, dir;

if (patt == 0) {
	if (!instance_exists(player)) exit;
	if (global.practice == 11) {
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
	
	audio_play_sound(snd04_47, 0, false, world.sound_vol);
	instance_create_depth(0, 0, -15, Boss04_72);
	
	dir = choose(1, -1); dir_before = dir;
	for(i=0; i<6; i+=1) {
		for(j=0; j<5; j+=1) {
			temp = instance_create_depth(100 + 120*j, 54 + 125*i, -5, Boss04_73);
			temp.direction = point_direction(room_width/2, room_height/2, temp.x, temp.y) + dir*90;
			temp.speed = choose(3, 4);
			temp.image_xscale = random_range(1, 2);
			temp.image_yscale = temp.image_xscale;
		}
	}
	
	patt += 1;
	alarm[3] = 375;
} else if (patt == 1) {
	if (!instance_exists(player)) exit;
	
	dir = -dir_before;
	dir_before *= -1;
	with(Boss04_73) {
		enable = false;
		gravity = 0.3;
	}
	for(i=0; i<6; i+=1) {
		for(j=0; j<5; j+=1) {
			temp = instance_create_depth(100 + 120*j, 54 + 125*i, -5, Boss04_73);
			temp.direction = point_direction(room_width/2, room_height/2, temp.x, temp.y) + dir*90;
			temp.speed = choose(3, 4);
			temp.image_xscale = random_range(1, 2);
			temp.image_yscale = temp.image_xscale;
		}
	}
	
	patt += 1;
	alarm[3] = 500;
} else if (patt == 2) {
	if (!instance_exists(player)) exit;
	
	dir = -dir_before;
	dir_before *= -1;
	with(Boss04_73) {
		enable = false;
		gravity = 0.3;
	}
	for(i=0; i<6; i+=1) {
		for(j=0; j<5; j+=1) {
			temp = instance_create_depth(100 + 120*j, 54 + 125*i, -5, Boss04_73);
			temp.direction = point_direction(room_width/2, room_height/2, temp.x, temp.y) + dir*90;
			temp.speed = choose(3, 4);
			temp.image_xscale = random_range(1, 2);
			temp.image_yscale = temp.image_xscale;
		}
	}
	
	patt += 1;
	alarm[3] = 365;
} else if (patt == 3) {
	audio_play_sound(snd04_31, 0, false, world.sound_vol);
	temp = instance_create_depth(192, 176, 2, Boss04_74);
	temp.index = sprBoss04_70;
	temp.num = 10;
	
	with(Boss04_72) destroy = true;
	mode = 8;
	mode_time = 0;
	xx = 400;
	yy = -200;
	zz = 2;
	
	patt += 1;
	alarm[3] = 15;
} else if (patt == 4) {
	audio_play_sound(snd04_31, 0, false, world.sound_vol);
	temp = instance_create_depth(608, 176, 2, Boss04_74);
	temp.index = sprBoss04_71;
	temp.num = 50;
	
	patt += 1;
	alarm[3] = 15;
} else if (patt == 5) {
	audio_play_sound(snd04_31, 0, false, world.sound_vol);
	temp = instance_create_depth(192, 432, 2, Boss04_74);
	temp.index = sprBoss04_72;
	temp.num = 90;
	
	patt += 1;
	alarm[3] = 15;
} else if (patt == 6) {
	audio_play_sound(snd04_31, 0, false, world.sound_vol);
	temp = instance_create_depth(608, 432, 2, Boss04_74);
	temp.index = sprBoss04_73;
	temp.num = 130;
	
	patt += 1;
	if (instance_exists(player)) alarm[3] = 90;
} else if (patt == 7) {
	image_index = -1;
	with(Boss04_73) {
		enable = false;
		gravity = 0.3;
	}
	
	with(Boss04_74) {
		instance_destroy();
		var temp = instance_create_depth(x, y, 0, Boss04_75);
		temp.sprite_index = index;
		temp.alarm[0] = num;
	}
	
	patt += 1;
	alarm[3] = 135;
} else {
	mode = 7;
	mode_time = 0;
	yy = -200;
	
	patt = 0;
	alarm[4] = 450;
}