var temp, dis, dir;

if (patt == 0) {
	if (instance_exists(player)) {
		temp = instance_create_depth(room_width-player.x, player.y, -2, Boss04_76);
		temp.sid = player.id;
		if (instance_exists(Boss04_55)) temp.platform_id = instance_nearest(x, y, Boss04_55);
	}
	mode = 1;
	
	patt += 1;
	alarm[3] = 5;
} else if (patt <= 125) {
	if (patt == 15) {
		if (instance_exists(player)) {
			if (player.x <= room_width/2) mode = 2; // anticlockwise
			else mode = 3; // clockwise
		} else mode = 2;
		mode_num = 0;
	}
	
	if (patt == 70) {
		mode += 2;
		mode_num = 0;
	}
	
	if (patt <= 120) {
		temp = instance_create_depth(0, -200, -3, Boss04_77);
		temp.image_xscale = random_range(0.8, 1.5);
		temp.image_yscale = temp.image_xscale;
		temp.xx = random(400);
		temp.yy = -200;
		dis = random_range(4, 6);
		dir = random_range(250, 290);
		temp.hs = lengthdir_x(dis, dir);
		temp.vs = lengthdir_y(dis, dir);
		temp.angle = random(360);
		temp.as = random_range(-2, 2);
	}
	
	patt += 1;
	alarm[3] = 8;
} else if (patt == 126) {
	with(Boss04_76) instance_destroy();
	mode = 6;
	mode_num = 0;
	
	patt += 1;
	alarm[3] = 300;
} else {
	instance_destroy();
}