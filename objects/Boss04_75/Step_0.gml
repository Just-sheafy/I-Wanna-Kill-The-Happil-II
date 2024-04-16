var dir, dis;

CX += (room_width/2-CX)/50;
CY += (room_height/2-CY)/50;
noise = random_range(-15+8*mode, 1);

if (mode == 0) {
	if (instance_exists(player)) {
		dis = min(point_distance(xx, yy, player.x, player.y), 10);
		dir = point_direction(xx, yy, player.x, player.y);
	} else {
		dis = min(point_distance(xx, yy, 0, 0), 10);
		dir = point_direction(xx, yy, 0, 0);
	}
	
	xx += lengthdir_x(dis/10, dir);
	yy += lengthdir_y(dis/10, dir);
} else if (mode == 1) {
	mode_time = min(mode_time+1, 60);
	lambda = sin(degtorad(mode_time*3/2));
	image_xscale = 2+lambda;
	image_yscale = image_xscale;
	
	if (patt <= 4) {
		if (instance_exists(player)) {
			if (rush >= 2 and patt <= 3) {
				xx += (player.x-xx)/30;
				yy += (player.y-yy)/30;
			} else if (rush >= 2) {
				xx += (player.x-xx)/85;
				yy += (player.y-yy)/85;
				
			    if (xx > player.x+10) xx -= 0.5;
			    if (xx < player.x-10) xx += 0.5;
			    if (yy > player.y+10) yy -= 0.5;
			    if (yy < player.y-10) yy += 0.5;
			} else {
			    if (xx > player.x+10) xx -= 1;
			    if (xx < player.x-10) xx += 1;
			    if (yy > player.y+10) yy -= 1;
			    if (yy < player.y-10) yy += 1;
			}
		} else {
			if (rush >= 2 and patt <= 3) {
				xx += -xx/30;
				yy += -yy/30;
			} else if (rush >= 2) {
				xx += -xx/80;
				yy += -yy/80;
				
			    if (xx > 10) xx -= 0.5;
			    if (xx < -10) xx += 0.5;
			    if (yy > 10) yy -= 0.5;
			    if (yy < -10) yy += 0.5;
			} else {
			    if (xx > 10) xx -= 1;
			    if (xx < -10) xx += 1;
			    if (yy > 10) yy -= 1;
			    if (yy < -10) yy += 1;
			}
		}
	}
}

zz_speed += zz_gravity;
zz += zz_speed;
if (zz < -120) zz = -120;

if (patt == 5) {
	dir = point_direction(room_width/2, room_height/2, xx, yy);
	xx += lengthdir_x(16, dir);
	yy += lengthdir_y(16, dir);
}
if (patt == 3 or patt == 4 or patt == 5) image_angle += 8*zz_speed;

x = xx;
y = yy;
depth = floor(zz/2*lambda);