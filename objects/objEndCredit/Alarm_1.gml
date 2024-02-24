t = 0;
with(world) {
	if filePlaying != 23 and curMusic != global.Ending {
		audio_stop_channel(0);
	    filePlaying = 23;
	    curMusic = global.Ending;
	    Instance = audio_play_sound(curMusic, 10, false, world.sound_vol);
	}
}