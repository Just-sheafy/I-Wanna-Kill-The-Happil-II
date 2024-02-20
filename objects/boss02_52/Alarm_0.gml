if patt < 6 {
    var zx = instance_create_depth(ox, oy, -2, Boss02_52);
    zx.alarm[0] = 0;
    zx.hspeed = hspd;
    zx.vspeed = vspd;
    zx.ang = ang;
    patt += 1;
    alarm[0] = 4;
}