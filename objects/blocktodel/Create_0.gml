event_inherited();

function trigger_activate() {
	var i;
	
	if (active) {
		for(i=0; i<total; i+=1) {
			with(trigger_id[i]) instance_destroy();
		}
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		instance_destroy();
	}
}