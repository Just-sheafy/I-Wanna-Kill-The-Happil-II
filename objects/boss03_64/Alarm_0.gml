var i, zx;

if patt < 8 {
    if patt == 0 {
        instance_create_depth(0, 0, -100, light);
        zx = instance_create_depth(x, y, -10, Boss03_n);
        zx.image_index = 21;
        zx.sid = id;
        zx.ox = -110;
        zx.oy = -81;
        image_index = 1;
    }
    for(i=0; i<irandom_range(4, 6); i+=1) {
        instance_create_depth(handx, handy, -2, Boss03_66);
    }
    audio_play_sound(snd02_11, 0, false);
    if patt == 4 and instance_exists(player) {
        ox = player.x;
    }
    if patt == 5 {
        instance_create_depth(ox, 608, -3, Boss03_67);
		audio_play_sound(snd01_6, 0, false);
        zx = instance_create_depth(0, 0, 0, view_an3);
        zx.asdf = 20;
    }
    patt += 1;
    alarm[0] = 25;
    if patt == 8 {
        instance_create_depth(0, 0, -100, light);
        instance_create_depth(400, 160, -2, Boss03_68);
        alarm[0] = 80;
    }
} else if patt < 13 {
    if patt == 8 {
        image_index = 0;
        instance_create_depth(0, 0, -100, light);
    }
    if patt - floor(patt / 2) * 2 == 0 {
        instance_create_depth(272, 0, -2, Boss03_70);
        instance_create_depth(400, 0, -2, Boss03_70);
        instance_create_depth(528, 0, -2, Boss03_70);
    } else {
        instance_create_depth(336, 0, -2, Boss03_70);
        instance_create_depth(464, 0, -2, Boss03_70);
    }
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
    audio_play_sound(snd03_28, 0, false);
    patt += 1;
    alarm[0] = 40;
    if patt == 13 {alarm[0] = 80;}
} else if patt == 13 {
    instance_create_depth(128, -100, -2, Boss03_71);
    instance_create_depth(672, -100, -2, Boss03_73);
    patt += 1;
    alarm[0] = 100;
} else if patt == 14 {
    instance_create_depth(0, 0, -100, light);
    instance_create_depth(400, 80, -2, Boss03_75);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 30;
    audio_play_sound(snd03_31, 0, false);
    patt += 1;
    alarm[0] = 180;
} else if patt == 15 {
    if instance_exists(player) {ox = player.x;}
    patt += 1;
    alarm[0] = 25;
} else if patt == 16 {
    instance_create_depth(ox, 608, -3, Boss03_67);
    audio_play_sound(snd01_6, 0, false);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
    patt += 1;
    alarm[0] = 275;
} else {
    instance_create_depth(0, 0, -100, light);
    gravity_direction = 0;
    gravity = 0.05;
    image_index = 2;
    instance_create_depth(400, -715, 2, Boss03_77);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 30;
}