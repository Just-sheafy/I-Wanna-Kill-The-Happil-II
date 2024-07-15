trigger_id[1] = inst_88BD4D4;

ftn_step = function() {
	if (trig[0]) {
		if (time < 16) {
			with(trigger_id[0]) y -= 2;
			with(trigger_id[1]) y -= 2;
			time += 1;
		} else instance_destroy();
	}
};