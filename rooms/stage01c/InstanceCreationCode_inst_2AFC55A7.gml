trigger_id[0] = inst_7C62E955;
trigger_id[1] = inst_64D9A01;
trigger_id[2] = inst_2F50464D;
trigger_id[3] = inst_2B18B602;
trigger_id[4] = inst_7A67937C;

ftn_trigger = function(trigger) {
	if (trigger == 0) audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
	if (trigger >= 0 && trigger <= 2) {
		if (trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			with(trigger_id[trigger]) depth = 2;
		}
	}
}

ftn_step_begin = function() {
	var i;
	
	if (active) {
		for(i=0; i<3; i+=1) {
			if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				if (time < 24) { with(trigger_id[i]) hspeed = 4; }
				else if (time < 32) { with(trigger_id[i]) { hspeed = 0; vspeed = -4; } }
				else { with(trigger_id[i]) vspeed = 0; }
			}
		}
	}
};

ftn_step = function() {
	var i;
	
	if (active) {
		if (time < 24) {
			for(i=3; i<5; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					trigger_id[i].x += 4;
				}
			}
			time += 1;
		} else if (time < 32) {
			for(i=3; i<5; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					trigger_id[i].y -= 4;
				}
			}
			time += 1;
		} else instance_destroy();
	}
};