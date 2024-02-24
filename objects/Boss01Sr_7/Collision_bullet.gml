if (mode == 0) {
	audio_play_sound(sndBossHit, 0, false, world.sound_vol);
	with(other) instance_destroy();
	instance_destroy();
}