ftn_step = function() {
	if (trig[0]) {
		if (time < 64) {
			with(trigger_id[0]) x += 6;
			time += 1;
		} else instance_destroy();
	}
};