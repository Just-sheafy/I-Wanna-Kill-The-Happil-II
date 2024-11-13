trigger_id[0] = inst_E03A612;
trigger_id[1] = inst_3E168D8F;
trigger_id[2] = inst_4A075A78;
trigger_id[3] = inst_3681926B;
trigger_id[4] = inst_51974847;
trigger_id[5] = inst_39778956;
trigger_id[6] = inst_43614F1B;

ftn_trigger = function(trigger) {
	if (trigger == 0) {
		audio_play_sound(sndBlockFall, 0, false, world.sound_vol);
		if (trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			trigger_id[trigger].trigger = 70;
		}
	}
}

ftn_step_begin = function() {
	var i;
	
	if (active) {
		for(i=2; i<6; i+=1) {
			if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				if (time < 8 + 8*(i == 2)) { with(trigger_id[i]) vspeed = 4; }
				else { with(trigger_id[i]) vspeed = 0; }
			}
		}
	}
};

ftn_step = function() {
	var i;
	
	if (active) {
		i = 6;
		if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			if (time < 16) trigger_id[i].y += 4;
		}
		time += 1;
		if (time >= 20) {
			if (trigger_id[1] != -1 && instance_exists(trigger_id[1])) {
				trigger_id[1].trigger = 81;
				instance_destroy();
			}
		}
	}
};