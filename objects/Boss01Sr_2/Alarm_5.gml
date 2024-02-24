var zx;

if (patt == 0) {
	audio_play_sound(sndSr01_defeat, 0, false, world.sound_vol);
	instance_create_depth(0, 0, -100, light);
	
	patt += 1;
	alarm[5] = 60;
} else if (patt == 1) {
	audio_play_sound(sndSr01_defeat, 0, false, world.sound_vol);
	instance_create_depth(0, 0, -100, light);
	
	patt += 1;
	alarm[5] = 15;
} else if (patt == 2) {
	audio_play_sound(sndSr01_defeat, 0, false, world.sound_vol);
	instance_create_depth(0, 0, -100, light);
	
	patt += 1;
	alarm[5] = 85;
} else if (patt == 3) {
	audio_play_sound(sndSr01_6, 0, false, world.sound_vol);
	temp = instance_create_depth(x+93, y-66, depth-1, Boss01Sr_7);
	temp.image_angle = 90;
	temp.vspeed = 8;
	temp.mode = 2;
	temp.alarm[1] = 9;
	
	patt += 1;
	alarm[5] = 9;
} else if (patt == 4) {
	with(block) {
		if (y == 384 && (x >= max(128, Boss01Sr_2.x-44*3-32) && x <= min(672, Boss01Sr_2.x+44*3))) {
			var temp = instance_create_depth(x, y, depth, Boss01Sr_4);
			temp.index = image_index;
			with(temp) event_perform(ev_step, ev_step_end);
			instance_destroy();
		}
	}
	
	with(Boss01Sr_4) alarm[0] = 250;
	
	zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 250;
	
	y += 4;
	oy = y;
	patt = 10;
}