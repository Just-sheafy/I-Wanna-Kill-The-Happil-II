var zx;

if patt == 0 {
    vs = 0;
    patt += 1;
    alarm[0] = 30;
} else if patt <= 8 {
    if (instance_exists(player)) instance_create_depth(player.x, room_height, -3, Boss03_42);
	else instance_create_depth(0, room_height, -3, Boss03_42);
    if patt == 3 or patt == 6 {
        if (instance_exists(player)) instance_create_depth(0, player.y, -4, Boss03_41);
		else instance_create_depth(0, 0, -4, Boss03_41);
        zx = instance_create_depth(0, 0, 0, view_an3);
        zx.asdf = 25;
    }
    patt += 1;
    alarm[0] = 30;
} else if patt == 9 {
    vs = -8;
    patt += 1;
    alarm[0] = 45;
} else if patt == 10 {
    instance_destroy();
}