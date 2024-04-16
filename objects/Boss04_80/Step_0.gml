if (patt < 80) {
	if (instance_exists(player)) {
		patt += 1;
	} else {
		patt = max(patt-1, 0);
		if (patt <= 0 and audio_is_playing(Instance))
			audio_stop_sound(Instance);
	}
} else patt += 1;

if (patt < 80) {
	vol = min(vol+1/80, 1);
	audio_sound_gain(Instance, vol*world.sound_vol, 0);
} else if (patt == 80) {
    audio_stop_sound(Instance);
    audio_play_sound(global.sndDogma, 0, false, world.music_vol);
	
	with(player) instance_destroy();
	with(playerHealth) {world.hp_before = hp;}
	with(Boss04_36) instance_destroy();
	with(Boss04_37) instance_destroy();
	with(Boss04_42) instance_destroy();
	
	with(Boss04_39) instance_destroy();
	with(Boss04_44) instance_destroy();
	with(Boss04_46) instance_destroy();
	with(Boss04_47) instance_destroy();
	with(Boss04_48) instance_destroy();
	with(Boss04_50) instance_destroy();
} else if (patt == 380 + (world.credit_played? 0:150)) {
	world.Boss4HP = max(world.Boss4HP-22, 0);
	room_goto(Stage04Bs6);
}