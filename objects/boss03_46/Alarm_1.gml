var i, zx;

if patt == 0 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<13; i+=1) {zx = instance_create_depth(64*i+16, 0, -2, Boss03_11); zx.depth = -1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    patt += 1;
    alarm[1] = 15;
} else if patt == 1 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<12; i+=1) {zx = instance_create_depth(64*i+48, 0, -2, Boss03_11); zx.depth = -1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    patt += 1;
    alarm[1] = 25;
} else if patt == 2 {
    if (instance_exists(player)) ox = player.x;
    patt += 1;
    alarm[1] = 45;
} else if patt == 3 {
    zx = instance_create_depth(ox, 0, 0, Boss03_13);
    zx.a = 1;
	zx.dp = -2;
    patt += 1;
    alarm[1] = 90;
    alarm[5] = 90;
} else if patt <= 10 {
    for(i=0; i<25; i+=1) {
        if (patt mod 2 == 0) {
            zx = instance_create_depth(64*i+16, 0, -3, Boss03_8);
            zx.image_alpha = 0;
            zx.vspeed = 5;
            zx.image_angle = direction;
            zx.gravity_direction = zx.direction;
            zx.gravity = 0.05;
        } else {
            zx = instance_create_depth(64*i+48, 608, -3, Boss03_8);
            zx.image_alpha = 0;
            zx.vspeed = -5;
            zx.image_angle = direction;
            zx.gravity_direction = zx.direction;
            zx.gravity = 0.05;
        }
    }
    audio_play_sound(snd03_3, 0, false, world.sound_vol);
    patt += 1;
    if patt != 11 {alarm[1] = 50;} else {alarm[5] = 0; alarm[1] = 100;}
} else if patt == 11 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<6; i+=1) {zx = instance_create_depth(0, 96*i+16, -2, Boss03_14); zx.depth = -1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    patt += 1;
    alarm[1] = 30;
} else if patt == 12 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<6; i+=1) {zx = instance_create_depth(0, 96*i+48, -2, Boss03_14); zx.depth = -1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    patt += 1;
    alarm[1] = 30;
} else if patt == 13 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<6; i+=1) {zx = instance_create_depth(0, 96*i+80, -2, Boss03_14); zx.depth = -1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    patt += 1;
    alarm[1] = 30;
} else if patt <= 38 {
    if instance_exists(player) {
        zx = instance_create_depth(player.x, player.y, -3, Boss03_60);
        zx.a = 1;
    }
    zx = instance_create_depth(random_range(256, 544), random_range(160, 576), -3, Boss03_60);
    zx.b = 0;
    zx = instance_create_depth(random_range(256, 544), random_range(160, 576), -3, Boss03_60);
    zx.b = 0;
    patt += 1;
    alarm[1] = 2;
} else {
    patt = 0;
    alarm[2] = 100;
    alarm[3] = 150;
    alarm[4] = 150;
}