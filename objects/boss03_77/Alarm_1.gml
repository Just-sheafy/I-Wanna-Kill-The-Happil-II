var zx;

if pat == 0 {
    zx = instance_create_depth(0, 32, 0, Boss03_79);
    zx.hspeed = 8;
    pat += 1;
    alarm[1] = 225;
} else {
    zx = instance_create_depth(800, 32, 0, Boss03_79);
    zx.hspeed = -8;
    pat = 0;
    alarm[1] = 225;
}