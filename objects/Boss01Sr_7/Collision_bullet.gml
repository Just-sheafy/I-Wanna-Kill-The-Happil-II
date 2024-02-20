if (mode == 0) {
	audio_play_sound(sndBossHit, 0, false);
	with(other) instance_destroy();
	instance_destroy();
}