ftn_step = function() {
	if (trig[0]) {
		if (time < 8) {
			with(trigger_id[0]) y += 4;
		} else if (time < 32) {
			with(trigger_id[0]) x -= 4;
		} else if (time < 40) {
			with(trigger_id[0]) y -= 4;
		} else if (time < 64) {
			with(trigger_id[0]) x += 4;
		}
		time += 1;
		if (time >= 64) time -= 64;
	}
};