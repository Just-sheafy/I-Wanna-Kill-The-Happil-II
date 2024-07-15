trigger_id[0] = inst_74ECFF5F;
trigger_id[1] = inst_7BF7603F;
trigger_id[2] = inst_6F5C1B86;
trigger_id[3] = inst_79D55D41;
trigger_id[4] = inst_36C47F25;

ftn_trigger = function(trigger) {
	if (trigger == 0) audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
}

ftn_step_begin = function() {
	if (active) {
		if (trig[0] && trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
			if (time < 8) { with(trigger_id[0]) vspd = -4; }
			else { with(trigger_id[0]) vspd = 0; }
		}
	}
};

ftn_step = function() {
	var i;
	
	if (active) {
		if (time < 8) {
			for(i=1; i<5; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					trigger_id[i].y -= 4;
				}
			}
			time += 1;
		} else instance_destroy();
	}
};