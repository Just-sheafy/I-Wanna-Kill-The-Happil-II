trigger_id[4] = inst_29DB8490;

ftn_trigger = function(trigger) {
	if (trigger >= 0 && trigger <= 4) {
		if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			if (trigger <= 3) {
				if (trigger == 0) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
				with(trigger_id[trigger]) { active = true; angle_spd = 1.25; }
			} else {
				var temp = instance_create_depth(trigger_id[trigger].x, trigger_id[trigger].y, trigger_id[trigger].depth, Hamjung01);
				temp.sprite_index = trigger_id[trigger].sprite_index;
				temp.image_index = trigger_id[trigger].image_index;
				temp.image_speed = 0;
				with(trigger_id[trigger]) instance_destroy();
				trigger_id[trigger] = temp;
			}
		}
	}
};

ftn_step = function() {
	if (trig[4] && trigger_id[4] != -1 && instance_exists(trigger_id[4])) {
		with(trigger_id[4]) image_alpha = max(image_alpha - 0.1, 0);
	}
}