if (other.y < 608-32 && (other.x == 0 || other.x == 800-32)) {
	audio_stop_sound(snd02_35);
	audio_play_sound(snd02_35, 0, false, world.sound_vol);
	with(other) {
		instance_destroy();
		var temp;
		temp = instance_create_depth(x+8, y+8, -5, Hamjung02Bs5);
		temp.image_index = 1;
		temp = instance_create_depth(x+24, y+8, -5, Hamjung02Bs5);
		temp.image_index = 1;
		temp = instance_create_depth(x+8, y+24, -5, Hamjung02Bs5);
		temp.image_index = 1;
		temp = instance_create_depth(x+24, y+24, -5, Hamjung02Bs5);
		temp.image_index = 1;
	}
}