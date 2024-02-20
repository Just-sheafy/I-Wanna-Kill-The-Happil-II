if (room == Stage04Bs6) {
	instance_destroy();
	with(objEndCredit) {
		audio_play_sound(sndBossHit, 0, false);
		t = max(t_bound, t-20*t_spd);
		if (number_hit >= 0) number_hit = min(8, number_hit+1);
		else ALPHA = 0.5;
		if (world.filePlaying == 23 && audio_is_playing(world.Instance))
			audio_sound_set_track_position(world.Instance, t/room_speed);
	}
}