event_inherited();

for(i=0; i<total; i++) {
	index[i] = 0;
}

function trigger_activate() {
	var i;
	
	if (active) {
		for(i=0; i<total; i+=1) {
			if (trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				trigger_id[i].image_index = index[i];
			}
		}
		instance_destroy();
	}
}