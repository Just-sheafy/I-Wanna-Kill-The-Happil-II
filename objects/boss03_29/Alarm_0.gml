if a < 50 {
    a += 1;
    var zx = instance_create_depth(x, y, -3, Boss03_32);
    zx.hspeed = random_range(0.75+0.5*a/50,3+a/50) * (2*(a mod 2)-1);
    zx.vspeed = random_range(-3.5, -9);
    alarm[0] = 3;
} else {
    instance_destroy();
    instance_create_depth(x, y, -3, Boss03_30);
}