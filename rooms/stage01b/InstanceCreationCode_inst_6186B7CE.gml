ftn_step = function() {
	if (trig[0] && trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
		if (time < 32) {
			with(trigger_id[0]) { x += 4; y += 4; }
			time += 1;
		}
	}
}