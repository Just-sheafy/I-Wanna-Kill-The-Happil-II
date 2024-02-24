var i, zx;

if (patt == 0) {
	audio_play_sound(snd03_27, 0, false, world.sound_vol);
	sprite_index = sprBoss03_1;
	image_angle = 90;
	depth = 2;
	x = 832; y = 320;
	hspeed = -8; vspeed = 0;
	gravity_direction = 180;
	
	for(i=0; i<30; i+=1) {
	    zx = instance_create_depth(0, 0, 0, view_an1);
	    zx.asdf = 75;
	    zx.not_check = true;
	}
	with(BossB) instance_destroy();
	
	patt += 1;
	alarm[0] = 60;
	alarm[11] = 0;
} else if (pat == 1) {
	if (patt == 1) {
		zx = instance_create_depth(0, 0, 0, soundEx);
	    zx.M1 = world.Instance;
	    zx.M2 = audio_play_sound(global.dotkid, 0, true, 0);
	    zx.nope = 1;
	    zx.arck = 0;
	    with(world) {filePlaying = 14; curMusic = global.dotkid;}
		patt += 1;
	    alarm[0] = 55;
	} else if (patt == 2) {
		instance_create_depth(0, 0, -100, dark2);
		patt += 1;
		alarm[0] = 20;
	} else room_goto(Stage03Bs4);
}