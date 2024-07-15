trigger_id[0] = inst_297B3D88;
trigger_id[1] = inst_3736C7CA;
trigger_id[2] = inst_7DB8180A;
trigger_id[3] = inst_7F329925;
trigger_id[4] = inst_71ED4CB1;
trigger_id[5] = inst_41C7A648;
trigger_id[6] = inst_7254FB6C;
trigger_id[7] = inst_67C134D2;
trigger_id[8] = inst_22F727A7;
trigger_id[9] = inst_26159CFC;

ftn_trigger = function(trigger) {
	if (trigger >= 0 && trigger <= 9) {
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