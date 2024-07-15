trigger_id[1] = inst_21E58F5A;
trigger_id[2] = inst_73CD4B8A;
trigger_id[3] = inst_28BE6DE9;

ftn_step = function() {
	var i;
	
	if (trig[0]) {
		if (trig[0]) {
		if (time < 16) {
			for(i=0; i<4; i+=1) { with(trigger_id[i]) y -= 1; }
			time += 1;
		} else instance_destroy();
	}
	}
};