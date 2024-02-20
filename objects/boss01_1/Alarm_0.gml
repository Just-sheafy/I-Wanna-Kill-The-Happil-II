var a;

if patt == 0 {
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 48, 448);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 752, 448);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 176, 576);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 624, 576);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 304, 576);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 496, 576);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.direction = point_direction(x, y-64, 400, 576);
    a.speed = 12;
    patt += 1;
    alarm[0] = 14;
} else if patt == 1 {
    vspeed = 0;
    instance_create_depth(-16, 128, -1, Boss01_4);
    instance_create_depth(816, 128, -1, Boss01_5);
	audio_play_sound(sndSpikeTrap, 0, false);
    patt += 1;
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    alarm[0] = 15;
} else if patt == 2 {
    instance_create_depth(-16, 224, -1, Boss01_4);
    instance_create_depth(816, 224, -1, Boss01_5);
	audio_play_sound(sndSpikeTrap, 0, false);
    patt += 1;
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    alarm[0] = 15;
} else if patt == 3 {
    instance_create_depth(-16, 320, -1, Boss01_4);
    instance_create_depth(816, 320, -1, Boss01_5);
	audio_play_sound(sndSpikeTrap, 0, false);
    patt += 1;
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    instance_create_depth(400, -160, -2, Boss01_6);
    alarm[0] = 420;
} else if patt == 4 {
    hspeed = -8;
    instance_create_depth(-16, 128, -1, Boss01_4);
    instance_create_depth(816, 128, -1, Boss01_5);
	audio_play_sound(sndSpikeTrap, 0, false);
    patt += 1;
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    alarm[0] = 8;
} else if patt == 5 {
    hspeed = 0;
    vspeed = 16;
    patt += 1;
    alarm[0] = 7;
} else if patt == 6 {
    instance_create_depth(-16, 224, -1, Boss01_4);
    instance_create_depth(816, 224, -1, Boss01_5);
	audio_play_sound(sndSpikeTrap, 0, false);
    patt += 1;
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    alarm[0] = 1;
} else if patt == 7 {
    hspeed = -8;
    vspeed = 0;
    audio_play_sound(snd01_1, 0, false);
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    patt += 1;
    alarm[0] = 14;
} else if patt == 8 {
    instance_create_depth(-16, 320, -1, Boss01_4);
    instance_create_depth(816, 320, -1, Boss01_5);
	audio_play_sound(sndSpikeTrap, 0, false);
    patt += 1;
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    alarm[0] = 54;
} else if patt == 9 {
    hspeed = 0;
    vspeed = -16;
    audio_play_sound(snd01_1, 0, false);
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    patt += 1;
    alarm[0] = 8;
} else if patt == 10 {
    hspeed = -8;
    vspeed = 0;
    patt += 1;
    alarm[0] = 8;
} else if patt == 11 {
    hspeed = 0;
    image_xscale = -1;
    patt += 1;
    alarm[0] = 30;
} else if patt = 12 {
    instance_create_depth(0, 0, -100, light);
    instance_create_depth(400, -64, -3, Boss01_7);
    instance_create_depth(639, 355, -3, Boss01_9);
    with(vineL) {instance_destroy();}
    with(vineR) {instance_destroy();}
    patt += 1;
    alarm[0] = 60;
} else if patt < 18 {
    if instance_exists(player) {
        a = instance_create_depth(x, y-64, -2, Boss01_2);
        a.hspeed = (player.x-x)/35;
        a.gravity = 0.3;
    }
    patt += 1;
    alarm[0] = 60;
    if patt == 18 {alarm[0] += 60;}
} else if patt == 18 {
    patt = 0;
    audio_play_sound(snd01_3, 0, false);
    instance_create_depth(-159.2, 224, -2, Boss01_11);
    instance_create_depth(959.2, 224, -2, Boss01_12);
    hspeed = 8;
    nothit = 1;
    alarm[1] = 8;
}