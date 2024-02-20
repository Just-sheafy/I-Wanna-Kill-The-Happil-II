image_xscale = 3;
image_yscale = 3;
image_speed = 1/2;

bump = false;

hspeed = 3;
vspeed = 3;
gravity = 1/8;
alarm[0] = 64;

var zx = instance_create_depth(x+9, y-108, -10, Boss01_n);
zx.ox = 9;
zx.oy = -108;
zx.image_index = 16;
zx.sid = id;