var i;

for(i=0; i<total; i+=1) {
	if (trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
		with(trigger_id[i]) trigger_activate();
	}
}
instance_destroy();