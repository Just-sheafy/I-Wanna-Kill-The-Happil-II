var i;

for(i=0; i<32; i+=1) spike_id[i] = -1;

trigger_activate = function() {
	var i, temp;
	
	active = true;
	for(i=0; i<5; i+=1) {
		spike_id[i] = instance_create_layer(x+32+64*i, y, "Instances", spikeUp);
		spike_id[i+5] = instance_create_layer(x+32+64*i, y+32, "Instances", spikeDown);
	}
	for(i=0; i<6; i+=1) {
		spike_id[i+10] = instance_create_layer(x+64*i, y+128, "Instances", spikeUp);
		spike_id[i+16] = instance_create_layer(x+64*i, y+160, "Instances", spikeDown);
	}
	for(i=0; i<5; i+=1) {
		spike_id[i+22] = instance_create_layer(x+32+64*i, y+256, "Instances", spikeUp);
		spike_id[i+27] = instance_create_layer(x+32+64*i, y+288, "Instances", spikeDown);
	}
	
	for(i=0; i<32; i+=1) {
		with(spike_id[i]) image_alpha = 0;
	}
	return;
}

ftn_step = function() {
	var i;
	
	if (active) {
		for(i=0; i<32; i+=1) {
			if (spike_id[i] != -1 && instance_exists(spike_id[i])) {
				with(spike_id[i]) image_alpha = min(image_alpha + 0.1, 1);
			}
		}
	}
}