var lx, ly, rx, ry, lrad, rrad, ldir, rdir, force_x, force_y;

lx = x - 3*8 * cos(degtorad(image_angle)) - 3*4 * sin(degtorad(image_angle));
ly = y + 3*8 * sin(degtorad(image_angle)) - 3*4 * cos(degtorad(image_angle));
rx = x + 3*8 * cos(degtorad(image_angle)) - 3*4 * sin(degtorad(image_angle));
ry = y - 3*8 * sin(degtorad(image_angle)) - 3*4 * cos(degtorad(image_angle));

force_x = 0;
force_y = 0;

lrad = point_distance(lx, ly, eyes[0].x, eyes[0].y);
rrad = point_distance(rx, ry, eyes[1].x, eyes[1].y);
ldir = point_direction(lx, ly, eyes[0].x, eyes[0].y);
rdir = point_direction(rx, ry, eyes[1].x, eyes[1].y);

force_x = (lengthdir_x(lrad-200, ldir) + lengthdir_x(rrad-200, rdir))/100;
force_y = 0.3 + (lengthdir_y(lrad-200, ldir) + lengthdir_y(rrad-200, rdir))/100;

hspeed += force_x/10;
vspeed += force_y/10;
hspeed = clamp(sign(hspeed) * max(abs(hspeed)-0.001, 0), -12, 12);
vspeed = clamp(sign(vspeed) * max(abs(vspeed)-0.001, 0), -12, 12);

if (appear) {
	/*
	if (x <= -150) { hspeed = abs(hspeed); }
	if (x >= room_width+150) { hspeed = -abs(hspeed); }
	if (y <= -150) { vspeed = abs(vspeed); }
	if (y >= room_height+150) { vspeed = -abs(vspeed); }
	*/
	
	angle_spd += ((((lx-x)*(eyes[0].x-lx) - (ly-y)*(eyes[0].y-ly)) +
	    ((rx-x)*(eyes[1].x-rx) - (ry-y)*(eyes[1].y-ry)))/200 - 10*sin(degtorad(image_angle))) / 200;
	angle_spd = sign(angle_spd) * max(abs(angle_spd)-0.1, 0);
	image_angle += angle_spd;
}

xx -= 3 + (x-xprevious);
yy -= 3 + (y-yprevious);

if (xx <= -256) xx += 256;
if (yy <= -196) yy += 196;

if (instance_exists(Boss04_h4)) {
	if (mode == 0) {
		if (Boss04_h4.hp <= 40) {
			mode = 1;
			alarm[1] = 25;
		}
	} else if (mode == 1) {
		if (Boss04_h4.hp <= 20) {
			mode = 2;
		}
	}
}