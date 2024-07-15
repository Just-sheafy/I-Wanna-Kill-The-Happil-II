trigger_id[1] = inst_3B91F36A;
trigger_id[2] = inst_2E83B6F1;

ftn_step = function() {
	if (trig[0]) {
		if (time < 16) {
			with(trigger_id[0]) x -= 2;
			with(trigger_id[1]) x -= 2;
			with(trigger_id[2]) x -= 2;
			time += 1;
		} else instance_destroy();
	}
};