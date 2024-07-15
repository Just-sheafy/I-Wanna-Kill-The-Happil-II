trigger_id[0] = inst_68629F40;
trigger_id[1] = inst_33A554FE;
trigger_id[2] = inst_31BD2DD5;
trigger_id[3] = inst_4C09C024;
trigger_id[4] = inst_347C677B;

ftn_trigger = function(trigger) {
	if (trigger >= 0 && trigger <= 4) {
		if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			with(trigger_id[trigger]) {
				instance_destroy();
				var temp = instance_create_depth(x, y, depth, disappearingBlock);
				temp.sprite_index = sprite_index;
				temp.image_index = image_index;
			}
		}
	}
};