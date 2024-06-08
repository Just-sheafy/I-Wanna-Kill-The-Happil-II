var i, _inst;

total = 16;
for(i=0; i<total; i++) {
	trigger_id[i] = -1;
	trigger_num[i] = 0;
}

_inst = instance_place(x, y, kill_character);
if (_inst != noone) trigger_id[0] = _inst;

function trigger_activate() {
	var i;
	
	for(i=0; i<total; i+=1) {
		if (trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			trigger_id[i].trigger = trigger_num[i];
			with(trigger_id[i]) ftn_trigger(trigger);
		}
	}
	instance_destroy();
}