var d, a, ax, ay, zx;

d = random(360);
a = random_range(200, 360);
ax = random_range(-16, 16);
ay = random_range(-16, 16);
zx = instance_create_depth(x+ax+lengthdir_x(a, d), y+ay+lengthdir_y(a, d), -3, Boss01_24);
zx.direction = point_direction(zx.x, zx.y, x+ax, y+ay);
zx.speed = point_distance(zx.x, zx.y, x+ax, y+ay)/80;
zx.gravity_direction = zx.direction;
zx.gravity = zx.speed/20;
zx.alarm[0] = 40;