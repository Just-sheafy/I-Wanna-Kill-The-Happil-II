ftn_step = function() {
	if (trig[0]) {
		if (time < 32) {
			with(trigger_id[0]) {
				x -= 2;
				image_xscale += 1/32;
				image_yscale = image_xscale;
			}
			time += 1;
		} else instance_destroy();
	}
};