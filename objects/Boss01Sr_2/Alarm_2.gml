// stomp

var zx;

if (patt == 0) {
	vspeed = -10;
	gravity = 0.2;
	
	patt += 1;
	alarm[2] = 50;
} else if (patt == 1) {
	audio_play_sound(sndSr01_6, 0, false, world.sound_vol);
	
	patt += 1;
	alarm[2] = 50;
} else if (patt == 2) {
	audio_play_sound(sndSr01_1, 0, false, world.sound_vol);
	y = 384;
	vspeed = 0;
	gravity = 0;
	
	zx = instance_create_depth(0, 0, 0, view_an3);
	zx.asdf = 20;
	with(Boss01Sr_1) lose(-1);
	
	patt += 1;
	alarm[2] = 50;
} else {
	action = false;
	patt = 0;
}