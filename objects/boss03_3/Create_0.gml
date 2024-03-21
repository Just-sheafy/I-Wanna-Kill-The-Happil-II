image_xscale = 2;
image_yscale = 2;
image_alpha = 0.05;
image_speed = 13/50;
alarm[0] = 30;
patt = 0;
pat = 0;
rat = 0;
if (instance_exists(player) and x < 400) {
    var zx = instance_create_depth(x, y, -10, Boss03_n);
    zx.image_index = 1;
    zx.sid = id;
}