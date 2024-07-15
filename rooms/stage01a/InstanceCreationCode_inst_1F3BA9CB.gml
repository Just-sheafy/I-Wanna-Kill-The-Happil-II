trigger_id[1] = inst_4CEADA91;
trigger_id[2] = inst_70B3C3F6;

ftn_trigger = function(trigger) {
	if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
		if (trigger == 0) {
			audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
			with(trigger_id[trigger]) { active = true; angle_spd *= -1; }
		} else if (trigger == 2) {
				var temp = instance_create_depth(trigger_id[trigger].x, trigger_id[trigger].y, trigger_id[trigger].depth, Hamjung01);
				temp.sprite_index = trigger_id[trigger].sprite_index;
				temp.image_index = trigger_id[trigger].image_index;
				temp.image_speed = 0;
				with(trigger_id[trigger]) instance_destroy();
				trigger_id[trigger] = temp;
			}
	}
};


ftn_step = function() {
	if (trig[1] && trigger_id[1] != -1 && instance_exists(trigger_id[1])) {
		if (time < 8) {
			with(trigger_id[1]) x += 4;
		} else if (time < 24) {
			with(trigger_id[1]) y += 4;
		} else if (time < 32) {
			with(trigger_id[1]) x -= 4;
		}
		time += 1;
	}
	if (trig[2] && trigger_id[2] != -1 && instance_exists(trigger_id[2])) {
		with(trigger_id[2]) image_alpha = max(image_alpha - 0.1, 0);
	}
}