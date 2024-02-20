if (image_index == 0) {
	audio_play_sound(sndBossHit, 0, false);
	with(other) instance_destroy();
	sid.image_xscale -= 2;
	sid.spd -= 2;
}