var zx;

if patt == 0 {
    instance_create_depth(0, 0, -8, Boss03_h7);
    nothit = false;
    patt += 1;
    alarm[0] = 25;
} else {
    zx = instance_create_depth(random_range(64, 736), random_range(32, 160), -4, Boss03_78);
    zx.a = a;
    alarm[0] = 35 - a*5;
}