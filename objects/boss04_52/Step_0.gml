if (disappear) {
	if (image_alpha > 0) image_alpha -= 0.02;
	else instance_destroy();
}

if (!move) exit;
if (point_distance(x, y, 400, 304) < 100) visible = false;

hspeed += lengthdir_x(0.1, point_direction(x, y, 400, 304));
vspeed += lengthdir_y(0.1, point_direction(x, y, 400, 304));