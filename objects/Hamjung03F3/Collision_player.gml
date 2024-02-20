if image_index == 0 {
	if (image_yscale == 1) other.vspd = -5;
	else other.vspd = 5;
	with(other) reset_jumps();
	
    var zx = instance_create_depth(0, 0, -2, Hamjung03F4);
    zx.a = a;
    audio_play_sound(sndPSwitch, 0, false);
    image_index = 1;
    alarm[0] = 50;
}