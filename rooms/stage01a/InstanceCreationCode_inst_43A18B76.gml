trigger_id[0] = inst_4CEADA91;

ftn_step = function() {
	if (trig[0] && trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
		if (time < 8) {
			with(trigger_id[0]) x += 4;
		} else if (time < 24) {
			with(trigger_id[0]) y -= 4;
		} else if (time < 32) {
			with(trigger_id[0]) x -= 4;
		}
		time += 1;
	}
}