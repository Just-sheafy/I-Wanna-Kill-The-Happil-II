ftn_step = function() {
	if (trig[0]) {
		if (time < 16) {
			with(trigger_id[0]) { image_yscale -= 1/16; }
			time += 1;
		} else instance_destroy();
	}
};