var i;

depth = -10;
trigger = -1;
trigger_id = -1;
total = 16;
is_action = false;

for(i=0; i<total; i+=1) {
    action_obj[i] = -1;
}

function exists_action_obj(i) {
	return action_obj[i] != -1 && instance_exists(action_obj[i]);
}

function remove_action_obj(i) {
	if (exists_action_obj(i)) {
	    with(action_obj[i]) instance_destroy();
	    action_obj[i] = -1;
	}
}

function ftn_trigger(triggered, triggered_obj) { return; }
function trigger_activate(obj_index, spr_index) { return false; }
function ftn_step() { return; }