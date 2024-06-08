var i, zx;

if (patt == 0) {
	if (global.practice == 7) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage03Bs);
		exit;
	}
	
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