if (share_id != -1) {
	if (timer == 50 && place_meeting(x, y, player)) {
		active = true;
	} else if (active) {
		if (timer == 50) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		timer = max(timer-1, 0);
		if (timer <= 0) {
			active = false;
			block_id = instance_create_depth(x, y, 0, block);
			block_id.visible = false;
			block_id.image_xscale = image_xscale;
			block_id.image_yscale = image_yscale;
			
			with(share_id) {
				timer = 0;
				active = false;
				block_id = instance_create_depth(x, y, 0, block);
				block_id.visible = false;
				block_id.image_xscale = image_xscale;
				block_id.image_yscale = image_yscale;
			}
		}
	}
} else {
	if (active) {
		if (block_id != -1 && instance_exists(block_id)) {
			with(block_id) instance_destroy();
			block_id = -1;
		}
		if (timer == 50) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		timer = max(timer-1, 0);
		if (timer <= 0) instance_destroy();
	} else timer = min(timer+1, 50);
}