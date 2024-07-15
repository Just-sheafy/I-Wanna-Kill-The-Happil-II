trigger_activate = function() {
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	layer_background_blend(layer_background_get_id(layer_get_id("Background")), make_color_rgb(128, 128, 64));
	
	if (trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
		with(trigger_id[0]) instance_destroy();
	}
};