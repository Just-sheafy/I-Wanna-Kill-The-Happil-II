// red

if a1 == 0 {
    var zx = instance_create_depth(x, y-64, -1, Boss01_30);
    zx.vspeed = -10;
    zx.friction = 0.5;
    if !a {
        a = 1;
        with(zx) {
            var zx = instance_create_depth(x, y, -10, Boss01_n);
            zx.image_index = 10;
            zx.sid = id;
        }
    }
    a1 += 1;
    alarm[1] = 20;
} else if a1 == 1 {
    a1 += 1;
    nothit = 1;
    alarm[1] = 120;
} else {
    a1 = 0;
    nothit = 0;
    with(Boss01_35) {
        red = (long.angle-irandom_range(250, 350)*0.4) mod 360;
        red_available = true;
    }
}