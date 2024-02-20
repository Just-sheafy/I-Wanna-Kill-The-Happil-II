if patt == 0 {
    sprite_index = sprBoss03_3;
    image_speed = 1;
    patt += 1;
    alarm[0] = 30;
} else if patt == 1 {
    var zx = instance_create_depth(0, 0, -100, dark3);
    zx.depth = 3;
    zx.a = 0.2;
    zx = instance_create_depth(x, y, 1, Boss03_4);
    zx.sid = id;
    if x > 400 {zx.alarm[2] = 0;}
    image_speed = 4/5;
    pat = 1;
    patt += 1;
    alarm[0] = 150;
} else if patt == 2 {
    with(dark3) {b = 1;}
    with(Boss03_4) {instance_destroy();}
    sprite_index = sprHamjung03B6;
    image_speed = 13/50;
    pat = 0;
    patt += 1;
    alarm[0] = 30;
} else if patt == 3 {
    rat = 1;
}