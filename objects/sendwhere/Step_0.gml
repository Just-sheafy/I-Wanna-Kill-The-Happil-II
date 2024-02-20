if (active) {
	var i, t_whole = 0;
		
	for(i=0; i<total; i++) {
		t[i] = max(0, t[i]-1);
		t_whole += t[i];
		if (t[i] <= 0 and instance_exists(trigger_id[i])) {
			trigger_id[i].hspeed = 0;
			trigger_id[i].vspeed = 0;
			trigger_id[i] = -1;
		}
	}
	
	if (t_whole <= 0) instance_destroy();
}