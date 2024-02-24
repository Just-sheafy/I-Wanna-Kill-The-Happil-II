var zx;

if a == 0 {
    with(Hamjung03Bs1) {d = 1;}
    s = 1;
    a += 1;
    alarm[1] = 90;
} else if a == 1 {
    zx = instance_create_depth(x, y, 0, Boss01_23);
    zx.sid = id;
    zx.alarm[0] = 120;
    a += 1;
    alarm[1] = 60;
} else if a == 2 {
    with(player) {
        instance_destroy(); var zx = instance_create_depth(x, y, depth, Boss02_60);
        zx.direction = point_direction(x, y, 400, 272); zx.speed = point_distance(x, y, 400, 272)/47;
    }
	with(playerHealth) {not_check = true;}
    with(Hamjung03Bs5) {d = 1; vspd = 1;}
    with(Boss03_dead1) {a = 1;}
    pat = 1;
    a += 1;
    alarm[1] = 30;
} else if a == 3 {
    zx = instance_create_depth(0, 0, 0, soundEx);
    zx.M1 = world.Instance;
    zx.M2 = audio_play_sound(global.mental, 10, false, 0);
    zx.nope = 1;
    zx.arck = 0;
    with(world) {filePlaying = 12; curMusic = global.mental;}
    a += 1;
    alarm[1] = 15;
} else if a == 4 {
    with(Boss02_60) {instance_destroy();}
    gravity_direction = point_direction(-300, -300, 400, 272);
    gravity = point_distance(-300, -300, 400, 272)/4095;
    a += 1;
    alarm[1] = 45;
} else if a == 5 {
    instance_create_depth(0, 0, -100, dark2);
    a += 1;
    alarm[1] = 20;
} else if a == 6 {
	with(playerHealth) {world.hp_before = hp;}
    room_goto(Stage03Bs2);
}