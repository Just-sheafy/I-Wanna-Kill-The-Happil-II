if (place_meeting(x+hspeed, y, block)) {
	x -= hspeed;
	hspeed *= -1;
}
if (place_meeting(x, y+vspeed, block)) {
	audio_play_sound(sndExplo, 0, false, world.sound_vol);
	instance_create_depth(x, y, -4, Explo2);
	instance_destroy();
}

if (y >= 640) instance_destroy();