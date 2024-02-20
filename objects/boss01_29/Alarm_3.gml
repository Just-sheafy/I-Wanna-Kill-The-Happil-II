// blue

if a3 == 0 {
    var zx = instance_create_depth(x, y-64, -1, Boss01_25);
    zx.vspeed = -10;
    zx.friction = 0.5;
    zx.b = 1;
    zx.alarm[1] -= 120;
    a3 += 1;
    alarm[3] = 200;
} else if a3 == 1 {
    a3 = 0;
    with(Boss01_35) {
        blue = (long.angle-irandom_range(400, 550)*0.4) mod 360;
        blue_available = true;
    }
}