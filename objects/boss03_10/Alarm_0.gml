var i, zx;

if patt == 0 {
    vspeed = 0;
    image_index = 7;
    audio_play_sound(snd02_26, 0, false, world.sound_vol);
    instance_create_depth(x, y, -4, Boss02_71);
    zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 10;
    patt += 1;
    alarm[0] = 13;
} else if patt == 1 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<13; i+=1) {instance_create_depth(64*i+16, 0, 1, Boss03_11);}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    image_speed = 0;
    patt += 1;
    alarm[0] = 15;
} else if patt == 2 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<12; i+=1) {instance_create_depth(64*i+48, 0, 1, Boss03_11);}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    sprite_index = sprBoss02_63;
    image_speed = 0.2;
    image_index = 0;
    patt += 1;
    alarm[0] = 15;
} else if patt == 3 {
    vspeed = -16;
    patt += 1;
    alarm[0] = 39;
} else if patt == 4 {
    sprite_index = sprBoss02_58;
    image_speed = 0;
    image_index = 0;
    image_xscale = -1;
    vspeed = 0;
    x = 160;
    y = 360;
    d = 180;
    instance_create_depth(x, y-62, -4, Boss03_12);
    pat = 1;
    patt += 1;
    alarm[0] = 30;
} else if patt == 5 {
    sprite_index = sprBoss02_59;
    image_speed = 0.2;
    instance_create_depth(x+32, y-94, -4, Boss03_15);
    audio_play_sound(snd03_6, 0, false, world.sound_vol);
    if (instance_exists(player)) ox = player.x;
	else ox = 0;
    zx = instance_create_depth(x, y, -10, Boss03_n);
    zx.image_index = 2;
    zx.sid = id;
    zx.ox = -26;
    zx.oy = -78;
    patt += 1;
    alarm[0] = 45;
} else if patt == 6 {
    instance_create_depth(ox, 0, 0, Boss03_13);
    patt += 1;
    alarm[0] = 90;
} else if patt == 7 {
    audio_play_sound(snd03_6, 0, false, world.sound_vol);
    instance_create_depth(x+32, y-94, -4, Boss03_15);
    if (instance_exists(player)) ox = player.x;
	else ox = 0;
    patt += 1;
    alarm[0] = 45;
} else if patt == 8 {
    instance_create_depth(ox, 0, 0, Boss03_13);
    patt += 1;
    alarm[0] = 120;
} else if patt == 9 {
    audio_play_sound(snd03_7, 0, false, world.sound_vol);
    sprite_index = sprBoss02_60;
    instance_create_depth(400, 608, 1, Hamjung03Bs4);
    patt += 1;
    alarm[0] = 30;
} else if patt == 10 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<13; i+=1) {zx = instance_create_depth(64*i+16, 0, 1, Boss03_11); zx.a = 1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    patt += 1;
    alarm[0] = 15;
} else if patt == 11 {
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    for(i=0; i<12; i+=1) {zx = instance_create_depth(64*i+48, 0, 1, Boss03_11); zx.a = 1;}
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
    visible = false;
    instance_create_depth(x, y-62, -4, Boss03_12);
    patt += 1;
    alarm[0] = 15;
} else if patt == 12 {
    instance_destroy();
    instance_create_depth(0, 0, 0, Boss03_16);
}