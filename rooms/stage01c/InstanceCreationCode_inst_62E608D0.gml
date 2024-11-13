trigger_activate = function() {
	var i;
	
	audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
	for(i=0; i<total; i+=1) {
		if (!trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			trig[i] = true;
			ftn_trigger(i);
		}
	}
	active = true;
	return;
}

ftn_step = function() {
	if (trig[0]) {
		if (time < 16) {
			with(trigger_id[0]) y += 2;
			time += 1;
		} else instance_destroy();
	}
};