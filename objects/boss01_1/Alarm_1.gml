if patt == 0 {
    hspeed = 0;
    vspeed = 16;
    patt += 1;
    alarm[1] = 8;
} else if patt == 1 {
    vspeed = 0;
    hspeed = 8;
    audio_play_sound(snd01_1, 0, false, world.sound_vol);
    var a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    patt += 1;
    alarm[1] = 8;
} else if patt == 2 {
    hspeed = 0;
    with(spikeUp) {if x>400 {asdf = 1;}}
    patt += 1;
    ang = 1;
} else if patt == 3 {
    hspeed = 8;
    patt += 1;
    alarm[1] = 52;
} else if patt == 4 {
    hspeed = 0;
    image_xscale = 1;
    with(spikeUp) { if x > 400 {asdf = 0;} else {asdf = 1;} }
    patt += 1;
    ang = 3;
    alarm[10] = 120;
} else if patt == 5 {	
    with(spikeUp) {asdf = 0;}
    hspeed = -8;
    nothit = 0;
    patt += 1;
    alarm[1] = 52;
    alarm[10] = 0;
} else if patt == 6 {	
    hspeed = 0;
    image_xscale = -1;
    patt += 1;
    alarm[1] = 30;
} else if patt = 7 {
	if (global.practice == 2) {
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
		room_goto(Stage01Bs);
		exit;
	}
	
	if (global.practice == 3) Boss01_h.hp -= 10;
	
    instance_create_depth(400, 210, -1, Boss01_10);
    nothit = 1;
    patt = 0;
    alarm[2] = 30;
}