image_alpha = random_range(0.5, 0.75);

vspd += grav;
x += hspd;
y += vspd;

angle_time += 1;
if (angle_time < 15) angle = 0;
else if (angle_time < 30 || (angle_time >= 45 && angle_time < 60)) angle = 30;
else if (angle_time < 45) angle = 60;
else { angle_time = 0; angle = 0; }

if (x <= 100) {
	hspd = abs(hspd);
} else if (x >= room_width - 100) {
	hspd = -abs(hspd);
}
if (y >= 384 && vspd > 0) {
	audio_play_sound(sndSr01_1, 0, false, world.sound_vol);
	y -= abs(vspd);
	vspd = -10;
	if (instance_exists(player)) {
		with(Boss01Sr_1) lose(2);
	}
	
	bounce += 1;
	if (bounce >= 5) vspd = -15;
}

if (y < -64) instance_destroy();