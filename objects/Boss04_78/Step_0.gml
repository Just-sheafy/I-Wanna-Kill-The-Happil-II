if (y <= -200 and vspeed < 0) instance_destroy();
if (!appear and y >= -120) {
	audio_play_sound(snd04_47, 0, false, world.sound_vol);
	appear = true;
}

if (instance_exists(Boss04_55)) {
	x = Boss04_55.x;
	y += Boss04_55.y - Boss04_55.yprevious;
}