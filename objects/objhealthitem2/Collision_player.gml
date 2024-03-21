if (!world.HEALTH_ok and !troll) exit;

if (!is_eaten) {
	with(playerHealth) {
		if (hp < hpm) {
			hp = hpm; changed = true; t = 0;
		}
	}
	with(Boss04_h3) { hp = hpm; }
	is_eaten = true;
	audio_play_sound(sndHealthItem2, 0, false, world.sound_vol);
}