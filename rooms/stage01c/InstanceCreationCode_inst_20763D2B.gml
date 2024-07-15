ftn_trigger = function(trigger) {
	trigger_id[trigger].depth = -2;
}

ftn_step = function() {
	var i, temp;
	
	if (trig[0]) {
		if (time < 8) {
			with(trigger_id[0]) { image_yscale += 1; }
			time += 1;
		}
	}
};