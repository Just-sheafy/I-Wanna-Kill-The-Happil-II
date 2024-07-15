var i, _inst;

time = 0;
total = 16;
active = false;
for(i=0; i<total; i++) {
	trigger_id[i] = -1;
	trig[i] = false;
}

_inst = instance_place(x, y, kill_character);
if (_inst != noone) trigger_id[0] = _inst;

function ftn_trigger(trigger) { return; }
function ftn_step_begin() { return; }
function ftn_step() { return; }

function trigger_activate() {
	var i;
	
	for(i=0; i<total; i+=1) {
		if (!trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			trig[i] = true;
			ftn_trigger(i);
		}
	}
	active = true;
	return;
}