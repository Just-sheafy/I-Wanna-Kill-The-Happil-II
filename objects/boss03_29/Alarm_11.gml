var zx = instance_create_depth(x, y, -1, Boss03_22);
zx.sprite_index = sprite_index;
zx.image_index = image_index;
zx.angle = 2*sin(degtorad(d));
zx.ax = 0.05;
zx.ay = 0.05;
alarm[11] = 2;