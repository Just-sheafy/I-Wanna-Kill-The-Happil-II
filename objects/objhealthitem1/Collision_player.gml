if (!world.HEALTH_ok) exit;

if (!is_eaten) {
	with(playerHealth) {
		if (hp < hpm) {
			hp++; changed = true; t = 0;
		}
	}
	is_eaten = true;
	audio_play_sound(sndHealthItem1, 0, false);
}