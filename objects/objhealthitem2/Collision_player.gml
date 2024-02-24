if (!world.HEALTH_ok) exit;

if (!is_eaten) {
	with(playerHealth) {
		if (hp < hpm) {
			hp = hpm; changed = true; t = 0;
		}
	}
	is_eaten = true;
	audio_play_sound(sndHealthItem2, 0, false, world.sound_vol);
}