ftn_trigger = function(trigger) {
	if (trigger == 0 && trig[trigger]) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
};

ftn_step = function() {
	var i;
	
	if (trig[0] && time < 100) {
		for(i=0; i<4; i+=1) {
			if (trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
				with(trigger_id[i]) { angle_spd -= 0.025; }
			}
		}
		time += 1;
	}
}