// clone

var temp;

if (patt == 0) {
	action = false;
	patt += 1;
	alarm[3] = 50;
} else {
	audio_play_sound(sndSr01_7, 0, false);
	
	patt = 0;
	temp = instance_create_depth(x, y, depth, Boss01Sr_8);
	temp.angle = angle;
	temp.angle_time = angle_time;
	temp.hspd = -hspd*5/3;
	temp.vspd = vspd;
	temp.grav = grav;
}