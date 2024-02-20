var zx = instance_create_depth(x, y-64, depth-1, BossB);
zx.sid = id; zx.image_xscale = 2; zx.image_yscale = 2; zx.oy = -64;
with(other) {instance_destroy();}