var i, j, zx, temp, dir, xxx, yyy;

if (patt == 0) {
	mode = 4;
    audio_play_sound(snd04_3, 0, false, world.sound_vol);
    
    xxx = xx - room_width/2;
    yyy = yy - room_height/2;
    instance_create_depth(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
        room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), -10, Boss04_21);
    
    patt += 1;
    alarm[1] = 5;
} else if (patt == 1) {
    rush += 1;
	if (rush == 1) {
	    zz_speed = 40/24;
	    zz_gravity = -5/96;
	    patt += 1;
	    alarm[1] = 60;
	} else if (rush <= 5) {
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
		
	    patt += 1;
	    alarm[1] = 60;
	} else {
		mode = 5;
		mode_time = -1;
		rush = 0;
		
		image_index = 0;
		image_angle = 0;
		scale = 3;
		alpha = 1;
		xx = choose(0, 800);
		yy = 304 + 495;
		zz = 0;
		zz_speed = 0;
		zz_gravity = 0;
		
		CX = room_width/2;
		CY = room_height/2;
		
		patt = 0;
		alarm[2] = 50;
	}
} else if (patt == 2) {
    audio_play_sound(snd04_4, 0, false, world.sound_vol);
    patt += 1;
	if (rush <= 1) {
		alarm[1] = 90;
		dir = choose(0, 45);
		for(i=0; i<4; i+=1) {
			temp = instance_create_depth(room_width/2, room_height/2, 125, Boss04_67);
			temp.image_alpha = 0;
			temp.theta = 90*i+dir;
			if (i == 0) temp.snd_valid = true;
		}
	} else alarm[1] = 60;
} else if (patt == 3) {
	xxx = xx - CX;
    yyy = yy - CY;
    ixx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    iyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
	ixx = xx;
	iyy = yy;
	
	dir = 18+36*(rush-1);
	for(i=0; i<5; i+=1) {
		for(j=0; j<9; j+=1) {
			temp = instance_create_layer(ixx, iyy, "Player", Boss03_6);
			xxx = lengthdir_x(8, 72*i+dir)*(1-j/8) + lengthdir_x(8, 72*(i+2)+dir)*j/8;
			yyy = lengthdir_y(8, 72*i+dir)*(1-j/8) + lengthdir_y(8, 72*(i+2)+dir)*j/8;
			temp.speed = point_distance(0, 0, xxx, yyy);
			temp.direction = point_direction(0, 0, xxx, yyy);
			temp.gravity = 0.05;
			temp.gravity_direction = temp.direction;
			temp.noBlock = true;
			temp.alarm[0] = 90;
		}
	}
	with(Boss03_7) { noise = true; }
    
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
    zz_gravity = 0;
    patt += 1;
    alarm[1] = 30;
} else if (patt == 4) {
	if (rush <= 1) {
		hp_var.mode = 4;
		hp_var.xx1 = 113;
		hp_var.xx2 = 677;
		if (instance_exists(player)) {
			if (player.x <= 400) {
				hp_var.yy1 = -236;
				hp_var.yy2 = -66;
			} else {
				hp_var.yy1 = -66;
				hp_var.yy2 = -236;
			}
		} else {
			hp_var.yy1 = -236;
			hp_var.yy2 = -66;
		}
		hp_var.zz1 = 120/3;
		hp_var.zz2 = 120/3;
		hp_var.vspeed = 2;
		hp_var.gravity = 0.05;
		hp_var.reflect = false;
		hp_var.kill_block.kill = true;
	}
	patt = 1;
	alarm[1] = 10;
}