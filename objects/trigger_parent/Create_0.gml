var i;

active = false;
total = 16;
for(i=0; i<total; i++) {
	trigger_id[i] = -1;
	hspd[i] = 0;
	vspd[i] = 0;
}

function trigger_activate() {
	var i;
	
	if (active) {
		for(i=0; i<total; i+=1) {
			if (trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				trigger_id[i].hspeed = hspd[i];
				trigger_id[i].vspeed = vspd[i];
			}
		}
		instance_destroy();
	}
}