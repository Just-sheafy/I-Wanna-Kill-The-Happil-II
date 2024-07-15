event_inherited();

function ftn_trigger(trigger) {
	if (trigger == 0 && trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
		with(trigger_id[0]) { depth = -3; hspeed = -8; }
	}
	return;
};