ftn_step = function() {
	if (trig[0]) {
		if (time < 20) {
			with(trigger_id[0]) { image_yscale -= 1/4; }
			time += 1;
		} else instance_destroy();
	}
};