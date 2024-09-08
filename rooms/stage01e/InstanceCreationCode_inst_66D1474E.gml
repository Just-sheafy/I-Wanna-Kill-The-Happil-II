var i;

for(i=0; i<8; i+=1) spike_id[i] = -1;

trigger_activate = function() {
	active = true;
	spike_id[0] = instance_create_layer(x+64, y, "Instances", spikeLeft);
	spike_id[1] = instance_create_layer(x+96, y, "Instances", spikeRight);
	spike_id[2] = instance_create_layer(x, y+112, "Instances", spikeLeft);
	spike_id[3] = instance_create_layer(x+32, y+112, "Instances", spikeRight);
	spike_id[4] = instance_create_layer(x+64, y+224, "Instances", spikeLeft);
	spike_id[5] = instance_create_layer(x+96, y+224, "Instances", spikeRight);
	spike_id[6] = instance_create_layer(x, y+336, "Instances", spikeLeft);
	spike_id[7] = instance_create_layer(x+32, y+336, "Instances", spikeRight);
	
	for(i=0; i<8; i+=1) {
		with(spike_id[i]) image_alpha = 0;
	}
	return;
}

ftn_step = function() {
	var i;
	
	if (active) {
		for(i=0; i<8; i+=1) {
			if (spike_id[i] != -1 && instance_exists(spike_id[i])) {
				with(spike_id[i]) image_alpha = min(image_alpha + 0.1, 1);
			}
		}
	}
}