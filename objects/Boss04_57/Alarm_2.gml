var i, temp;

if (patt == 0) {
	mode_time = 50;
	instance_create_depth((xx == 0)? 800:0, yy, 0, Boss04_68);
	
	patt += 1;
	alarm[2] = 50;
} else if (patt == 1) {
	mode = 6;
	mode_time = 0;
	mode_time_v = 0;
    audio_play_sound(snd04_3, 0, false, world.sound_vol);
    
	instance_create_layer(0, 0, "Player", surf_mobius);
    instance_create_depth(xx, yy, -10, Boss04_21);
    
    patt += 1;
    alarm[2] = 35;
} else {
	audio_play_sound(snd02_11, 0, false, world.sound_vol);
	
	for(i=0; i<5; i+=1) {
		temp = instance_create_depth(xx, yy, 0, Boss04_65);
		if (patt == 3) temp.x = room_width-temp.x;
		temp.image_xscale = 1/8; temp.image_yscale = 1/8;
		if (instance_exists(player))
			temp.direction = point_direction(temp.x, temp.y, player.x, player.y);
		else temp.direction = point_direction(temp.x, temp.y, 0, 0);
		temp.alarm[11] = 180;
		temp.speed = 3;
		temp.direction_speed = i/2-1;
		temp.outside = false;
	}
	
	patt += 1;
	if (patt == 4) patt = 2;
	alarm[2] = 35;
}