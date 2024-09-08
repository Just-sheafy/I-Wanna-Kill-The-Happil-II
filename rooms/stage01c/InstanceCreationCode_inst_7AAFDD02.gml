ftn_step = function() {
	var temp;
	
	if (trig[0]) {
		time += 1;
		if (time <= 16) {
			with(trigger_id[0]) y += 2;
		} else if (time <= 32) {
			with(trigger_id[0]) x -= 2;
		} else if (time <= 64) {
			if (time == 33) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
			with(trigger_id[0]) {
				x -= 1; y-= 3;
				image_xscale += 2/32;
				image_yscale = image_xscale;
			}
		} else if (time <= 114) {
			with(trigger_id[0]) depth = -3;
		} else if (time <= 434) {
			with(trigger_id[0]) x += 1;
		} else if (time <= 484) {
			if (time == 435) {
				audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
				temp = instance_create_depth(0, 0, 0, view_an3);
				temp.asdf = 15;
				with(inst_658D14B2) trigger_activate();
				with(inst_15C344C4) trigger_activate();
			}
			with(trigger_id[0]) x += 16;
		} else instance_destroy();
	}
};