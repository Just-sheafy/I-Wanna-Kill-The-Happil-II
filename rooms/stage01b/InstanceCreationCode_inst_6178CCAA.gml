trigger_id[1] = inst_8D1E40F;
trigger_id[2] = inst_2C2F6937;
trigger_id[3] = inst_6479A915;

ftn_step = function() {
	var i;
	
	if (trig[0]) {
		if (trig[0]) {
		if (time < 16) {
			for(i=0; i<4; i+=1) { with(trigger_id[i]) y += 1; }
			time += 1;
		} else instance_destroy();
	}
	}
};