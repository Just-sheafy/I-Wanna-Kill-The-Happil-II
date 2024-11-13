trigger_id[0] = inst_CF28BAF;
trigger_id[1] = inst_298AB568;
trigger_id[2] = inst_156885F9;
trigger_id[3] = inst_75F5D678;
trigger_id[4] = inst_47BD1207;
trigger_id[5] = inst_67748023;
trigger_id[6] = inst_6AC21F8A;
trigger_id[7] = inst_569A3AB4;
trigger_id[8] = inst_2291C078;

__trigger = 0;

ftn_trigger = function(trigger) {
	if (trigger == 0) {
		audio_play_sound(sndBlockFall, 0, false, world.sound_vol);
		if (trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			trigger_id[trigger].trigger = 11;
			if (trigger_id[trigger].trigger_id != -1 && instance_exists(trigger_id[trigger].trigger_id)) {
				trigger_id[9] = trigger_id[trigger].trigger_id;
				trigger_id[trigger].trigger_id = -1;
				trigger_id[9].collectable = false;
				trig[9] = true;
				if (trigger_id[9].object_index == Hamjung01J3) __trigger = 2;
				else __trigger = 1;
			}
		}
	}
}

ftn_step_begin = function() {
	var i;
	
	if (active) {
		for(i=2; i<5; i+=1) {
			if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				if (__trigger == 0) {
					if (time < 24) { with(trigger_id[i]) vspeed = 4; }
					else { with(trigger_id[i]) vspeed = 0; }
				} else if (__trigger == 1) {
					if (time < 16) { with(trigger_id[i]) vspeed = 4; }
					else { with(trigger_id[i]) vspeed = 0; }
				} else {
					if (time < 16) { with(trigger_id[i]) vspeed = 4; }
					else if (time < 50) { with(trigger_id[i]) vspeed = 0; }
					else if (time < 162) { with(trigger_id[i]) hspeed = 2; }
					else if (time < 178) { with(trigger_id[i]) { hspeed = 0; vspeed = 2; } }
					else { with(trigger_id[i]) vspeed = 0; }
				}
			}
		}
	}
};

ftn_step = function() {
	var i;
	
	if (active) {
		for(i=5; i<10; i+=1) {
			if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				if (__trigger == 0) {
					if (time < 24 && i < 9) trigger_id[i].y += 4;
				} else if (__trigger == 1) {
					if (time < 16 && i < 9) trigger_id[i].y += 4;
				} else {
					if (time < 16 && i < 9) trigger_id[i].y += 4;
					else if (time >= 50) {
						if (time < 162) {
							trigger_id[i].x += 2;
						} else if (time < 178) {
							if (time == 162 && i == 9) audio_play_sound(sndBreak, 0, false, world.sound_vol);
							trigger_id[i].y += 2;
						} else if (time == 178 && i == 9) {
							trigger_id[i].collectable = true;
							if (trigger_id[1] != -1 && instance_exists(trigger_id[1])) {
								trigger_id[1].trigger = 21;
								trigger_id[1].trigger_id = trigger_id[i];
							}
						}
					}
				}
			}
		}
		time += 1;
		if (time >= 200) instance_destroy();
	}
};