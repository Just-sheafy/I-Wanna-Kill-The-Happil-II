// pink

if a4 == 0 {
    var zx = instance_create_depth(x, y-64, -1, Boss01_34);
    zx.vspeed = -10;
    zx.friction = 0.5;
    a4 += 1;
    alarm[4] = 20;
} else if a4 <= 6 {
    with(Boss01_h11) {hp = min(hpm, hp+1);}
    a4 += 1;
    alarm[4] = 20;
} else {
    a4 = 0;
    with(Boss01_35) {
        pink = (short.angle-irandom_range(500, 1000)*0.1) mod 360;
        pink_available = true;
    }
}