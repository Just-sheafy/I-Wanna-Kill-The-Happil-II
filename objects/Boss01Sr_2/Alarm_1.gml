// fire

var temp;

if (patt == 0) {
	audio_play_sound(sndSr01_4, 0, false);
	temp = instance_create_depth(x+93, y-66, depth-1, Boss01Sr_7);
	temp.image_angle = 270;
	temp.vspeed = -8;
	temp.mode = 1;
	temp.alarm[0] = 50;
	temp.list_x = ds_list_create();
	if (choose(0, 1)) ds_list_add(temp.list_x, 128, 224, 288, 384, 480, 544, 640);
	else ds_list_add(temp.list_x, 160, 192, 320, 352, 416, 448, 576, 608);
	ds_list_shuffle(temp.list_x);
	
	patt += 1;
	alarm[1] = 100;
} else if (patt == 1) {
	action = false;
	patt = 0;
}