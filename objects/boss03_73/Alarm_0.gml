if (instance_exists(player)) {
	var zx = instance_create_depth(x, y, -1, Boss03_74);
	zx.direction = point_direction(x, y, player.x, player.y);
	zx.speed = 12;
	audio_play_sound(snd03_30, 0, false, world.sound_vol);
}

alarm[0] = 45;