var zx;

if (patt == 0) {
	mode = 3;
	zz = 0;
	depth = -5;
	image_xscale = 4;
	image_yscale = 4;
	image_alpha = 1;
	image_angle = random(360);
	
	if (instance_exists(Boss04_55)) {
		x = Boss04_55.x;
		y = Boss04_55.y + 860;
	} else { x = 0; y = 860; }
	vspeed = -32;
	gravity = 32/50;
	gravity_direction = 270;
	
	audio_play_sound(snd04_47, 0, false, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
	
	patt += 1;
	alarm[0] = 100;
} else if (patt == 1) {
	patt = 0;
	pat += 1;
	if (!instance_exists(player) or pat >= 4) instance_destroy();
	else alarm[0] = 60;
}