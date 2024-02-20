if patt == 0 {
    visible = false;
    with(dark1) {instance_destroy();}
    patt += 1;
    alarm[0] = 15;
} else if patt == 1 {
    var zx = instance_create_depth(0, 0, -7, dark1);
    zx.a = 1;
    patt += 1;
    alarm[0] = 20;
} else {
    instance_destroy();
    with(dark1) {instance_destroy();}
}