if (!a) exit;

a = false;
with(other) {
	if noGravity {exit;}
	vspd = -8;
	noGravity = true;
	jump_left = 0;
	audio_play_sound(sndBarrel, 0, false, world.sound_vol);
}