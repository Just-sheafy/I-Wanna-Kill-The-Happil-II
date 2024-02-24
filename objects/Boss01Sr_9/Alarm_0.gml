if (patt == 0) {
	fric = 0.1;
	patt += 1;
	alarm[0] = 100;
} else {
	audio_play_sound(sndExplo2, 0, false, world.sound_vol);
	
	var zx = instance_create_depth(0, 0, 0, view_an3);
	zx.asdf = 20;
	
	instance_create_depth(x, y, depth, Boss01Sr_11);
	instance_destroy();
}