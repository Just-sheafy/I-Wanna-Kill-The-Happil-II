ftn_step = function() {
	if (trig[0]) {
		if (time < 20) {
			with(trigger_id[0]) y -= 1.6;
			time += 1;
		} else instance_destroy();
	}
};