var i;

trigger_activate = function() {
	active = true;
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	trigger_id[0] = instance_create_layer(x-8, y, "Player", block);
	trigger_id[0].image_index = 1;
	trigger_id[0].image_alpha = 0;
	
	return;
}

ftn_step = function() {
	if (active) {
		if (trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
			with(trigger_id[0]) image_alpha = min(image_alpha + 0.1, 1);
		}
	}
}