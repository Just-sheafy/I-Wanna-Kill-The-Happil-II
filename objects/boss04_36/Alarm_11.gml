// HP decreased
if (abs(t_spd) >= 2 && hp0+hp1 <= (hpm0+hpm1) * 2/3) {
	t_spd /= 2;
	with(Boss04_40) { speed /= 2; x -= hspeed; y -= vspeed; }
	alarm[0] = 79;
}
if (!bat && hp0+hp1 <= (hpm0+hpm1) * 1/2) {
	bat = true;
	instance_create_depth(x, y, -5, Boss04_50);
	if (world.curMusic == global.stage04Bs3 and audio_sound_get_track_position(world.Instance) < 76.94)
		audio_sound_set_track_position(world.Instance, 76.94);
	alarm[0] = 49;
}