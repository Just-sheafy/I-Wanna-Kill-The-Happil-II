// baby yoshi

var temp;

if (patt == 0) {
	audio_play_sound(sndSr01_8, 0, false);
	
	temp = instance_create_depth(x-42, y-156, depth-1, Boss01Sr_9);
	temp.hspd = choose(-1, 1) * random_range(3.5, 5);
	temp.vspd = random_range(-2.5, 0);
	temp.alarm[0] = 300;
	
	patt += 1;
	alarm[4] = 100;
} else {
	action = false;
	patt = 0;
}