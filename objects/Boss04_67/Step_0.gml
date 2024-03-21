if (image_index == 0) {
	if (mode <= 2) {
		z_spd = max(z_spd + z_grav, -2.4);
		zz += z_spd;
		if (mode == 0) {
			if (zz < 0) z_grav = 0.08;
			if (z_spd >= 1) { radius_sp *= -1; mode = 1; }
		} else if (mode == 1) {
			if (x <= -170 or x >= room_width + 170 or y <= -170 or y >= room_height + 170) {
				if (!snd_valid) instance_destroy();
				else { mode = 2; alarm[0] = 20; }
			}
		}

		if (mode == 0) radius -= radius_sp*sign(z_grav);
		else if (mode == 1) {
			radius_sp = min(4.8, radius_sp + 0.2);
			radius += radius_sp;
		}
		theta += 1.2;

		x = room_width/2 + lengthdir_x(radius, theta);
		y = room_height/2 + lengthdir_y(radius, theta);
		depth = floor(zz/2);
		image_xscale = 4/(1+zz/125);
		image_yscale = 4/(1+zz/125);
		if (zz < 10) {
			if (snd_valid and Instance == -1 and mode == 0)
				Instance = audio_play_sound(snd04_47, 0, false, world.sound_vol);
			image_alpha = min(1, image_alpha+0.02);
		} else {
			if (snd_valid and Instance != -1) Instance = -1;
			if (image_alpha < 0.25) image_alpha += 0.01;
			image_alpha = max(0.25, image_alpha-0.01);
		}
	} else {
		image_angle += 5;
		if (instance_exists(Boss04_55)) {
			x = Boss04_55.x;
			y += Boss04_55.y - Boss04_55.yprevious;
		}
	}
}