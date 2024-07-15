trigger_id[1] = inst_487387A0;

ftn_step = function() {
	if (trig[0]) {
		if (time < 16) {
			with(trigger_id[0]) x += 2;
			with(trigger_id[1]) x += 2;
			time += 1;
		} else instance_destroy();
	}
};