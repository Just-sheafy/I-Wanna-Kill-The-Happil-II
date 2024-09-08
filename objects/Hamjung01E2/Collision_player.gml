if (!other.vwarp) {
	audio_play_sound(sndCoin, 0, false, world.sound_vol);
	image_speed = 4;
	other.vwarp = true;
	fast_time = 50;
	hit = true;
}