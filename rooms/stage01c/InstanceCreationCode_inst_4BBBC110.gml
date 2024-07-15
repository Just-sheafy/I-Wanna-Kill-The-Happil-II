trigger_id[1] = inst_354C9671;
trigger_id[2] = inst_1A0815AA;
xx = 128;

ftn_trigger = function(trigger) {
	if (trigger == 0) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
}

ftn_step = function() {
	var i, temp;
	
	if (active) {
		if (time < 168) {
			for(i=0; i<2; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					if (time < 64) trigger_id[i].x = 608 * sin(degtorad((time+1)/64*90));
					else if (time < 112) trigger_id[i].x = 368 + 240 * cos(degtorad((time+1-64)/48*180));
					else if (time < 168) {
						trigger_id[i].x = 368 - 240 * cos(degtorad((time+1-112)/56*180));
						while (i == 0 && trigger_id[i].x >= xx) {
							instance_create_depth(xx, trigger_id[0].y, trigger_id[0].depth, spikeDown);
							if (xx != 576) instance_create_depth(xx, trigger_id[1].y, trigger_id[1].depth, spikeUp);
							xx += 32;
						}
					}
					if (time - 4*floor(time/4) == 0) {
						temp = instance_create_depth(trigger_id[i].x, trigger_id[i].y, trigger_id[i].depth+1, Hamjung01);
						temp.sprite_index = trigger_id[i].sprite_index;
						temp.image_index = trigger_id[i].image_index;
						temp.image_speed = 0;
						temp.image_alpha = 0.5;
						with(temp) {
							ftn_step = function() {
								image_alpha = max(image_alpha - 0.05, 0);
								if (image_alpha <= 0) instance_destroy();
							};
						}
					}
				}
			}
			
			if (trig[2] && trigger_id[2] != -1 && instance_exists(trigger_id[2])) {
				if (time >= 152 && time < 168) trigger_id[2].y -= 2;
			}
			time += 1;
		} else {
			for(i=0; i<2; i+=1) {
				if (trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
					trigger_id[i].x = 608;
				}
			}
		}
	}
};