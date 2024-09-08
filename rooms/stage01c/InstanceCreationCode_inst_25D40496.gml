ftn_step = function() {
	if (trig[0]) {
		if (time < 40) {
			with(trigger_id[0]) x -= 4;
			time += 1;
		} else instance_destroy();
	}
};