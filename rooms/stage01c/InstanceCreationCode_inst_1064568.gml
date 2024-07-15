trigger_id[0] = inst_62F3F45D;

ftn_trigger = function(trigger) {
	if (trigger == 0) {
		if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
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
	if (trig[0] && trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
		with(trigger_id[0]) image_alpha = max(image_alpha - 0.1, 0);
	}
}