var dis = point_distance(x, y, 400, 304);

image_speed = 0;
image_xscale = min(1, dis/300);
image_yscale = image_xscale;
if (point_distance(x, y, 400, 304) < 100) visible = false;

hspeed += lengthdir_x(0.1, point_direction(x, y, 400, 304));
vspeed += lengthdir_y(0.1, point_direction(x, y, 400, 304));