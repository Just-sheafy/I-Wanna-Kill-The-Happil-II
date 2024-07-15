trigger_id[0] = inst_7C62E955;
trigger_id[1] = inst_64D9A01;
trigger_id[2] = inst_2F50464D;
trigger_id[3] = inst_2B18B602;
trigger_id[4] = inst_7A67937C;
trigger_id[5] = inst_12B6243E;
trigger_id[6] = inst_7547B35D;
trigger_id[7] = inst_49182423;

ftn_trigger = function(trigger) {
	if (trigger == 0) audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
}

ftn_step_begin = function() {
	var i;
	
	if (active) {
		for(i=0; i<3; i+=1) {
			if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				if (time < 32) { with(trigger_id[i]) vspd = 2; }
				else if (time < 48) { with(trigger_id[i]) { hspd = -2; vspd = 0; } }
				else if (time < 80) { with(trigger_id[i]) hspd = 2; }
				else if (time < 96) { with(trigger_id[i]) hspd = -2; }
				else if (time < 112) { with(trigger_id[i]) { hspd = 0; vspd = -4; } }
				else if (time < 128) { with(trigger_id[i]) vspd = 4; }
				else if (time < 144) { with(trigger_id[i]) vspd = -4; }
				else { with(trigger_id[i]) vspd = 0; }
			}
		}
	}
};

ftn_step = function() {
	var i;
	
	if (active) {
		if (time < 144) {
			if (time == 96 || time == 128) audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
			for(i=3; i<5; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					if (time < 32) trigger_id[i].y += 2;
					else if (time < 48) trigger_id[i].x -= 2;
					else if (time < 80) trigger_id[i].x += 2;
					else if (time < 96) trigger_id[i].x -= 2;
					else if (time < 112) trigger_id[i].y -= 4;
					else if (time < 128) trigger_id[i].y += 4;
					else if (time < 144) trigger_id[i].y -= 4;
				}
			}
			for(i=5; i<8; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					if (time < 16) trigger_id[i].y += 2;
					else if (time >= 96) {
						if (time < 112) trigger_id[i].y -= 1;
						else if (time < 128) trigger_id[i].y += 1;
						else if (time < 144) trigger_id[i].y -= 2;
					}
				}
			}
			time += 1;
		} else instance_destroy();
	}
};