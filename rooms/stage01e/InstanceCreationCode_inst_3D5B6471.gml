var i;

for(i=0; i<4; i+=1) spike_id[i] = -1;

trigger_activate = function() {
	var i, temp;
	
	active = true;
	spike_id[0] = instance_create_layer(x, y, "Instances", spikeLeft);
	spike_id[1] = instance_create_layer(x+32, y, "Instances", spikeRight);
	spike_id[2] = instance_create_layer(x, y+224, "Instances", spikeLeft);
	spike_id[3] = instance_create_layer(x+32, y+224, "Instances", spikeRight);
	
	for(i=0; i<4; i+=1) {
		with(spike_id[i]) image_alpha = 0;
	}
	return;
}

ftn_step = function() {
	var i;
	
	if (active) {
		for(i=0; i<4; i+=1) {
			if (spike_id[i] != -1 && instance_exists(spike_id[i])) {
				with(spike_id[i]) image_alpha = min(image_alpha + 0.1, 1);
			}
		}
	}
}