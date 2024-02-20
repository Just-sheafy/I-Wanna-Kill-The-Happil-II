if a == 0 {
    instance_create_depth(0, 0, -100, dark2);
    a += 1;
    alarm[1] = 20;
} else {
    with(player) {x = 320; y = 480;}
	with(playerHealth) {world.hp_before = hp;}
    room_goto(Stage01Bs3);
    world.re_nodie = true;
}