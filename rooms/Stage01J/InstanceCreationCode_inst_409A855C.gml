trigger_id[0] = inst_298AB568;
trigger_id[1] = inst_1B86434B;
trigger_id[2] = inst_91DFFD9;
trigger_id[3] = inst_3542A4D3;
trigger_id[4] = inst_4731B0F0;
trigger_id[5] = inst_7E89685D;
trigger_id[6] = inst_29897187;
trigger_id[7] = inst_3F187E96;

ftn_trigger = function(trigger) {
	if (trigger == 0) {
		audio_play_sound(sndBlockFall, 0, false, world.sound_vol);
		if (trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			trigger_id[trigger].trigger = 22;
		}
	} else if (trigger == 1) {
		if (trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			if (trigger_id[trigger].trigger == 40) trigger_id[trigger].trigger = 41;
			else if (trigger_id[trigger].trigger == 42) trigger_id[trigger].trigger = 43;
		}
	}
}

ftn_step_begin = function() {
	var i;
	
	if (active) {
		for(i=2; i<7; i+=1) {
			if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				if (time < 8) { with(trigger_id[i]) vspeed = 4; }
				else { with(trigger_id[i]) vspeed = 0; }
			}
		}
	}
};

ftn_step = function() {
	var i;
	
	if (active) {
		i = 7;
		if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			if (time < 8) trigger_id[i].y += 4;
		}
		time += 1;
		if (time >= 10) instance_destroy();
	}
};