var zx = instance_create_depth(x+random_range(-20, 20), y, depth, Boss03_5);
zx.hx = 1.5;
if x > 400 {zx.hx = -1.5;}
alarm[0] = 30;