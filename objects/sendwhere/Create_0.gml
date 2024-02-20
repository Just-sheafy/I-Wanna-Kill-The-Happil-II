event_inherited();

var i;

for(i=0; i<total; i+=1) t[i] = 10;

function trigger_activate() {
	if (active) {
		var i;
		
		for(i=0; i<total; i++) {
			if (instance_exists(trigger_id[i])) {
				trigger_id[i].hspeed = hspd[i];
				trigger_id[i].vspeed = vspd[i];
			}
		}
	}
}