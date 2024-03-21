var w, i, temp;

if !instance_exists(Boss04_57) {exit;}
x = ix + a * random_range(-3, 3);
y = iy + a * random_range(-3, 3);


// 3D effect
if (!surface_exists(surf)) surf = surface_create(309, 84);

w = surface_get_width(surf);

surface_set_target(surf);
draw_sprite_ext(sprBoss04_h7, -1, ox, oy, 1, 1, 0, c_white, armor_alpha);
draw_sprite(sprite_index, -1, ox, oy);
draw_sprite_ext(sprBoss01_h4, -1, ox, oy, shp/hpm, 1, 0, c_white, image_alpha);
surface_reset_target();

if (mode != 3 and mode != 4) {
	xx1_to = Boss04_57.ixx;
	yy1_to = Boss04_57.iyy;
	zz1_to = Boss04_57.izz;
	xx2_to = Boss04_57.txx;
	yy2_to = Boss04_57.tyy;
	zz2_to = Boss04_57.tzz;
}

if (mode == 0) {
    xx1 = ix-ox;
    yy1 = iy-oy;
    zz1 = 100;
    xx2 = ix-ox+305-36;
    yy2 = iy-oy;
    zz2 = 100;
    depth = -14;
} else if (mode == 1 or mode == 3) {
    xx1 += (xx1_to - xx1)/10;
    yy1 += (yy1_to - yy1)/10;
    zz1 += (zz1_to - zz1)/8;
    xx2 += (xx2_to - xx2)/10;
    yy2 += (yy2_to - yy2)/10;
    zz2 += (zz2_to - zz2)/8;
    depth = floor(zz1/2)-1;
} else if (mode == 2) {
    if (is_effect and Boss04_57.mode_time > 4 and Boss04_57.mode_time <= 26 and Boss04_57.mode_time-2*floor(Boss04_57.mode_time/2) == 0) {
        temp = instance_create_depth((xx1+xx2)/2, (yy1+yy2)/2, depth+1, Boss04_65);
		temp.image_xscale = 1/8; temp.image_yscale = 1/8;
        temp.direction = point_direction(xx1, yy1, xx2, yy2) + 90;
        temp.speed = 6;
		temp.direction_speed = 2 * (Boss04_57.mode_time-15)/11;
		temp.outside = false;
		temp.alarm[11] = 75;
        temp = instance_create_depth((xx1+xx2)/2, (yy1+yy2)/2, depth+1, Boss04_65);
		temp.image_xscale = 1/8; temp.image_yscale = 1/8;
        temp.direction = point_direction(xx1, yy1, xx2, yy2) + 270;
        temp.speed = 6;
		temp.direction_speed = -2 * (Boss04_57.mode_time-15)/11;
		temp.outside = false;
		temp.alarm[11] = 75;
    }
    
    xx1 = (1-_alpha)*xx1 + _alpha*xx1_to;
    yy1 = (1-_alpha)*yy1 + _alpha*yy1_to;
    zz1 = (1-_alpha)*zz1 + _alpha*zz1_to;
    xx2 = (1-_alpha)*xx2 + _alpha*xx2_to;
    yy2 = (1-_alpha)*yy2 + _alpha*yy2_to;
    zz2 = (1-_alpha)*zz2 + _alpha*zz2_to;
    depth = floor(zz1/2)-1;
} else if (mode == 4) {
	yy1 += vspeed;
	yy2 += vspeed;
	depth = -14;
}

if (mode != 4) {
	kill_block.x = (xx2_prev+xx2)/2;
	kill_block.y = (yy2_prev+yy2)/2;
	kill_block.image_xscale = point_distance(xx2_prev, yy2_prev, xx2, yy2)/16;
	kill_block.image_yscale = 3/4*(3 - zz2/50);
	kill_block.image_angle = point_direction(xx1, yy1, xx2, yy2);
} else {
	kill_block.x = (xx1+xx2)/2;
	kill_block.y = (yy1+yy2)/2;
	kill_block.image_xscale = point_distance(xx1, yy1, xx2, yy2)/32;
	kill_block.image_yscale = 2;
	kill_block.image_angle = point_direction(xx1, yy1, xx2, yy2);
}

r = point_distance(xx1, yy1, xx2, yy2);
theta = point_direction(xx1, yy1, xx2, yy2);
c = cos(degtorad(theta));
s = sin(degtorad(theta));