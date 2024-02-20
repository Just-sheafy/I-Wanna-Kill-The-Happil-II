with(other) instance_destroy();
if (instance_exists(player)) {
	audio_play_sound(sndBossHit, 0, false);
	if (x > player.x) x = min(672, x+16);
	else x = max(128, x-16);
}