var zx = instance_create_depth(640, 0, -2, Boss02_57);
if !a {
    a = 1;
    with(zx) {
        var zx = instance_create_depth(x, y, -10, Boss02_n);
        zx.image_index = 12;
        zx.sid = id;
        zx.oy = -128;
        zx.image_alpha = 1;
        zx.a = -1;
    }
}
alarm[7] = 960;