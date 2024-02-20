var i, zx;

if (patt == -1) {
	audio_play_sound(snd02_23, 0, false);
	patt += 1;
	alarm[0] = 29;
} else if patt < 60 {
    for(i=0; i<4; i+=1) {
        zx = instance_create_depth(x-32, y-94, -2, Boss02_63);
        zx.direction = 90*i+a;
        zx.speed = 13;
        zx = instance_create_depth(x-32, y-94, -2, Boss02_63);
        zx.direction = 90*i-a;
        zx.speed = 9;
    }
    zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 5;
    a += 38;
    patt += 1;
    alarm[0] = 5;
    if patt == 60 {alarm[0] = 20; image_speed = 0; image_index = 0;}
} else if patt == 60 {
    audio_play_sound(snd02_25, 0, false);
    sprite_index = sprBoss02_60;
    image_speed = 0.2;
    patt += 1;
    alarm[0] = 60;
} else if patt == 61 {
    audio_play_sound(snd02_24, 0, false);
    image_speed = 0;
    image_index = 0;
    zx = instance_create_depth(0, 0, -7, dark1);
    zx.a = 1;
    instance_create_depth(400, 304, -8, Boss02_64);
    for(i=0; i<18; i+=1) {
        zx = instance_create_depth(400, 304, -2, Boss02_63);
        zx.direction = 5+i*20;
        zx.speed = 12;
        zx.a = 1;
        zx = instance_create_depth(400, 304, -2, Boss02_63);
        zx.direction = 5+i*20;
        zx.speed = 10;
        zx.a = 1;
        zx = instance_create_depth(400, 304, -2, Boss02_63);
        zx.direction = 17.5+i*20;
        zx.speed = 8;
        zx.a = 1;
    }
    patt += 1;
    alarm[0] = 100;
} else if patt == 62 {
    audio_play_sound(snd02_25, 0, false);
    sprite_index = sprBoss02_63;
    image_speed = 0.2;
    patt += 1;
    alarm[0] = 15;
} else if patt == 63 {
    vspeed = -12;
    patt += 1;
    alarm[0] = 60;
    alarm[1] = 60;
} else if patt == 64 {
    instance_create_depth(848, 576, -2, Boss02_65);
    patt += 1;
    alarm[0] = 250;
} else if patt == 65 {
    instance_create_depth(400, 608, -1, Boss02_66);
    patt += 1;
    alarm[0] = 100;
} else if patt == 66 {
    audio_play_sound(snd02_25, 0, false);
    zx = instance_create_depth(0, 0, -7, dark1);
    zx.a = 1;
    instance_create_depth(400, 304, -8, Boss02_64);
    for(i=0; i<12; i+=1) {
        zx = instance_create_depth(400, 304, -2, Boss02_63);
        zx.direction = 5+i*30;
        zx.speed = 12;
        zx.a = 1;
        zx = instance_create_depth(400, 304, -2, Boss02_63);
        zx.direction = 5+i*30;
        zx.speed = 10;
        zx.a = 1;
        zx = instance_create_depth(400, 304, -2, Boss02_63);
        zx.direction = 25+i*30;
        zx.speed = 8;
        zx.a = 1;
    }
    patt += 1;
    alarm[0] = 60;
} else if patt == 67 {
    zx = instance_create_depth(0, 0, 0, soundEx2);
    zx.M2 = world.Instance;
    zx.M1 = audio_play_sound(global.stage02Bs3, 10, true);
    zx.Vol = 0;
    zx.ang = 0;
    audio_sound_gain(zx.M1, world.music_vol, 0);
    with(world) {filePlaying = 7.5; curMusic = global.stage02Bs3; Instance = soundEx2.M1;}
    patt += 1;
    alarm[0] = 100;
} else if patt == 68 {
    with(player) {x = 400; y = 192;}
	with(playerHealth) {world.hp_before = hp;}
    world.c = 1;
    room_goto(Stage02Bs3);
}