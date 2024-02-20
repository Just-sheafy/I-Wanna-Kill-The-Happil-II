image_speed = 0;

var zx = instance_create_depth(x, y, -10, Boss01_n);
zx.image_index = 15;
zx.sid = id;
zx.ox = 22;
zx.oy = -36;
zx.image_alpha = 1;
zx.a = -1;

patt = 0;
patt_end = false;
alarm[0] = 2;