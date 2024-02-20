image_xscale = 0.01;
image_yscale = 0.01;
vspeed = -10;
gravity = 0.1;
a = 0;

var zx = instance_create_depth(x, y, -10, Boss02_n);
zx.image_index = 6;
zx.sid = id;
zx.image_alpha = 1;
zx.a = -1;