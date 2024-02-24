if (patt > 0) {
	with(other) {
		instance_destroy();
		if (y <= 300) audio_play_sound(sndBreak, 0, false, world.sound_vol);
		var zx = instance_create_depth(x+8, y+8, -2, Hamjung03Bs7);
		zx.speed = 10; zx.direction = point_direction(832, 400, x+8, y+8);
		zx = instance_create_depth(x+24, y+8, -2, Hamjung03Bs7);
		zx.speed = 10; zx.direction = point_direction(832, 400, x+24, y+8);
	}
}