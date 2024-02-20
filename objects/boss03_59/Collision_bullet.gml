var zx = instance_create_depth(x, y, depth-1, BossB);
zx.sid = id;
zx.image_xscale = 3;
zx.image_yscale = 3;
with(other) {instance_destroy();}