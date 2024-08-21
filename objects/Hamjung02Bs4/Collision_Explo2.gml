if (visible && x >= 32 && x <= 768) {
	if (point_distance(x, y, other.x, other.y) <= 50 and other.image_index <= 20) {
		if (enable) {
			audio_play_sound(snd02_35, 0, false, world.sound_vol);
			with(Hamjung02Bs4) { enable = false; alarm[11] = 1; }
		}
		visible = false;
		image_alpha = 0;
		appear_time = 150;
		if (block_id != -1 && instance_exists(block_id)) {
			with(block_id) instance_destroy();
			block_id = -1;
		}
		
		instance_create_depth(x-8, y-8, -5, Hamjung02Bs5);
		instance_create_depth(x+8, y-8, -5, Hamjung02Bs5);
		instance_create_depth(x-8, y+8, -5, Hamjung02Bs5);
		instance_create_depth(x+8, y+8, -5, Hamjung02Bs5);
	}
}