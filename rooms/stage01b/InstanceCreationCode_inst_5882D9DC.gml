trigger_id[1] = inst_1E820941;
trigger_id[2] = inst_1141A8E7;
trigger_id[3] = inst_6A015DBF;

ftn_step = function() {
	var i;
	
	if (trig[0]) {
		if (time < 16) {
			for(i=0; i<4; i+=1) { with(trigger_id[i]) y += 1; }
			time += 1;
		} else instance_destroy();
	}
};