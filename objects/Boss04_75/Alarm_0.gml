var xxx, yyy, zx, i, temp;

if (patt == 0) {
	image_speed = 0.5;
	patt += 2;
	alarm[0] = 30;
} else if (patt == 1) {
    audio_play_sound(snd04_3, 0, false, world.sound_vol);
	
	mode = 1;
    instance_create_depth(xx, yy, -10, Boss04_21);
	
	patt += 1;
	alarm[0] = 30;
} else if (patt == 2) {
	rush += 1;
	
	if (rush <= 1) {
		mode = 1;
		zz_speed = 40/24;
		zz_gravity = -5/96;
		
		audio_play_sound(snd04_3, 0, false, world.sound_vol);
	    audio_play_sound(snd04_56, 0, false, world.sound_vol);
	    instance_create_depth(xx, yy, -10, Boss04_21);
	} else {
		if (instance_exists(player)) {
			dir = point_direction(room_width/2, room_height/2, player.x, player.y);
			xx = room_width/2 + lengthdir_x(room_height*3, dir+180);
			yy = room_height/2 + lengthdir_y(room_height*3, dir+180);
			
			CX = xx/2 + clamp(player.x, 64, room_width-64) * 1/2;
			CY = yy/2 + clamp(player.y, 64, room_height-64) * 1/2;
		} else {
			dir = point_direction(room_width/2, room_height/2, 0, 0);
			xx = room_width/2 + lengthdir_x(room_height*3, dir+180);
			yy = room_height/2 + lengthdir_y(room_height*3, dir+180);
			
			CX = xx/2 + 32;
			CY = yy/2 + 32;
		}
		
		zz = 240;
		zz_speed = 0;
	    zz_gravity = -5/96;
	}
	patt += 1;
	alarm[0] = 60;
} else if (patt == 3) {
	if (rush >= 2) audio_play_sound(snd04_58, 0, false, world.sound_vol);
    audio_play_sound(snd04_4, 0, false, world.sound_vol);
    patt += 1;
	if (rush <= 1) alarm[0] = 90;
	else alarm[0] = 60;
} else if (patt == 4) {
	for(i=0; i<8; i+=1) {
		temp = instance_create_layer(xx, yy, "Player", Boss03_6);
		temp.speed = 6;
		temp.direction = 45*i;
		temp.gravity = 0.05;
		temp.gravity_direction = temp.direction;
		temp.noBlock = true;
		temp.alarm[0] = 90;
	}
	with(Boss03_7) { noise = true; }
	
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
    zz_gravity = 0;
    patt += 1;
    alarm[0] = 30;
} else if (patt == 5) {
	if (rush <= 2) {
		patt = 2;
		alarm[0] = 10;
	}
}