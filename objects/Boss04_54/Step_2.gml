if (sid == -1 || !instance_exists(sid)) { instance_destroy(); }

x = sid.x + lengthdir_x(length * (100-t)/100, angle - 10*min(1, t/75)*t);
y = sid.y + lengthdir_y(length * (100-t)/100, angle - 10*min(1, t/75)*t);
image_angle = angle + 90 - 10*min(1, t/75)*t;