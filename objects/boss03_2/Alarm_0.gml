var i, zx;

if patt <= 2 {
    instance_create_depth(x, y, -3, Boss03_17);
    for(i=0; i<8; i+=1) {
        zx = instance_create_depth(x, y, -3, Boss03_8);
        zx.direction = 360/8*i+random(360/8);
        zx.speed = random_range(3, 5);
    }
	audio_play_sound(snd03_3, 0, false);
    instance_create_depth(64*patt+32, 0, -4, Boss03_9);
    zx = instance_create_depth(768-64*patt, 0, -4, Boss03_9);
	zx.snd_enable = false;
    patt += 1;
    alarm[0] = 15;
} else if patt <= 8 {
    instance_create_depth(x, y, -3, Boss03_17);
    for(i=0; i<8; i+=1) {
        zx = instance_create_depth(x, y, -3, Boss03_8);
        zx.direction = 360/8*i+random(360/8);
        zx.speed = random_range(3, 5);
    }
	audio_play_sound(snd03_3, 0, false);
    if patt == 6 {
        zx = instance_create_depth(x, y, 0, Boss01_23);
        zx.sid = id;
        zx.alarm[0] = 75;
        if (instance_exists(player)) instance_create_depth(player.x, 0, -4, Boss03_9);
    }
    patt += 1;
    alarm[0] = 8;
    if patt == 9 {
        patt -= 0.5;
        alarm[0] = 60;
    }
} else if patt == 8.5 {
    instance_create_depth(x, y, -3, Boss03_17);
    for(i=0; i<30; i+=1) {
        zx = instance_create_depth(x, y, -3, Boss03_8);
        zx.direction = i*12;
        zx.speed = 2;
        zx.gravity_direction = zx.direction;
        zx.gravity = 0.2;
        zx.alarm[11] = 2;
    }
	audio_play_sound(snd01_6, 0, false);
    patt += 0.5;
    alarm[0] = 58;
} else if patt == 9 {
    if (instance_exists(player)) instance_create_depth(player.x, 0, -3, Boss03_10);
    hspeed = 12;
    friction = 0.3;
    patt += 1;
    alarm[0] = 130;
} else if patt <= 17 {
    if patt == 10 {ox = x;}
    instance_create_depth(x, y, -3, Boss03_17);
    for(i=0; i<8; i+=1) {
        zx = instance_create_depth(x, y, -3, Boss03_8);
        zx.direction = 360/8*i+random(360/8);
        zx.speed = random_range(3, 5);
    }
	audio_play_sound(snd03_3, 0, false);
    patt += 1;
    alarm[0] = 30;
    if patt == 12 {
        zx = instance_create_depth(x, y, 0, Boss01_23);
        zx.sid = id;
        zx.alarm[0] = 75;
    }
    if patt == 15 {
        for(i=0; i<30; i+=1) {
            zx = instance_create_depth(x, y, -3, Boss03_8);
            zx.direction = i*12+6;
            zx.speed = 2;
            zx.gravity_direction = zx.direction;
            zx.gravity = 0.2;
            zx.alarm[11] = 3;
        }
		audio_play_sound(snd01_6, 0, false);
    }
    if patt == 18 {alarm[0] += 140;}
} else if patt == 18 {
	audio_play_sound(snd03_8, 0, false);
    patt += 1;
    alarm[0] = 60;
} else if patt == 19 {
    friction = 0;
    gravity = -0.6;
    instance_create_depth(516, 672, -1, Boss03_18);
    instance_create_depth(464, 736, -2, Boss03_19);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
    patt += 1;
    alarm[0] = 50;
} else if patt == 20 {
    gravity = 0;
    vspeed = 0;
    friction = 0.6;
    patt += 1;
    alarm[0] = 50;
} else if patt == 21 {
    instance_create_depth(640, -80, -2, Boss03_21);
    instance_create_depth(-48, 0, -2, Boss03_25);
    instance_create_depth(400, -715, 3, Boss03_26);
    patt += 1;
    alarm[0] = 150;
} else if patt == 22 {
    instance_create_depth(400, 480, -3, Boss03_30);
    patt += 1;
    alarm[0] = 30;
} else if patt == 23 {
    instance_create_depth(-32, 200, -2, Boss03_27);
    instance_create_depth(400, 480, -2, Boss03_29);
    patt += 1;
    alarm[0] = 125;
} else if patt == 24 {
    instance_create_depth(640, 608, -1, Boss03_33);
    patt += 1;
    alarm[0] = 90;
} else if patt == 25 {
    instance_create_depth(-36, 640, -3, Boss03_35);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
    patt += 1;
    alarm[0] = 160;
} else if patt == 26 {
    instance_create_depth(516, 672, -1, Boss03_18);
    if choose(0, 1) {
        instance_create_depth(-36, 492, -1, Boss03_36);
        instance_create_depth(836, 492, -1, Boss03_37);
    } else {
        instance_create_depth(836, 492, -1, Boss03_36);
        instance_create_depth(-36, 492, -1, Boss03_37);
    }
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
    patt += 1;
    alarm[0] = 90;
} else if patt == 27 {
    if (instance_exists(player)) a = player.x;
    patt += 1;
    alarm[0] = 40;
} else if patt == 28 {
    instance_create_depth(a, 608, -1, Boss03_39);
    for(i=0; i<6; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 30;
    }
    patt += 1;
    alarm[0] = 60;
} else if patt == 29 {
    instance_create_depth(640, -120, -2, Boss03_40);
    patt += 1;
    alarm[0] = 315;
} else if patt == 30 {
    with(Boss03_26) {friction = 0; gravity = -0.5;}
    instance_create_depth(-300, -300, 2, Boss03_43);
    for(i=0; i<3; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 30;
    }
    patt += 1;
    alarm[0] = 80;
} else if patt == 31 {
    vspeed = -27;
    friction = 0.6;
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
    y += 1441;
    patt += 1;
    alarm[0] = 45;
} else if patt == 32 {
    b = 1;
    instance_create_depth(0, 0, -100, light);
    instance_create_depth(0, 0, -8, Boss03_h);
    nothit = 0;
    patt += 1;
    alarm[0] = 45;
    alarm[1] = irandom_range(120, 280);
    alarm[2] = 180;
} else if patt == 33 {
    instance_create_depth(x, y, -3, Boss03_17);
    for(i=0; i<8; i+=1) {
        zx = instance_create_depth(x, y, -3, Boss03_8);
        zx.direction = 360/8*i+random(360/8);
        zx.speed = random_range(3, 5);
    }
	audio_play_sound(snd03_3, 0, false);
    alarm[0] = 30;
}