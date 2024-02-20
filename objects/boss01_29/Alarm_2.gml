// yellow

if a2 == 0 {
    var zx = instance_create_depth(x, y-64, -1, Boss01_21);
    zx.vspeed = -10;
    zx.friction = 0.5;
    a2 += 1;
    alarm[2] = 150;
} else if a2 == 1 {
    a2 = 0;
    with(Boss01_35) {
        yellow = (short.angle-irandom_range(500, 750)*0.1) mod 360;
        yellow_available = true;
    }
}