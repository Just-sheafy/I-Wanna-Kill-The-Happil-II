var zx;

if (!valid) {
	audio_play_sound(snd04_63, 0, false, world.sound_vol);
	
	depth = -6;
	image_blend = c_white;
	image_xscale = -1;
	image_yscale = 1;
	
	if (instance_exists(player)) {
		zx = instance_create_depth(0, 0, 0, view_an3);
	    zx.asdf = 20;
	}
	
	x = -192;
	hspeed = 24;
	valid = true;
	alarm[0] = 750;
} else {
	depth = 50;
	image_blend = c_grey;
	image_xscale = 1/2;
	image_yscale = 1/2;
	
	x = 928;
	hspeed = -12;
	valid = false;
	alarm[0] = 100;
}