var zx;

if patt == 0 {
    zx = instance_create_layer(0, 0, "Player", soundEx);
    zx.M1 = world.Instance;
    zx.M2 = audio_play_sound(global.phantom, 10, false, 0);
    zx.nope = 1;
    zx.arck = 0;
    with(world) {filePlaying = 3.8; curMusic = global.phantom;}
    patt += 1;
    alarm[2] = 40;
} else if patt == 1 {
    with(Boss01_23) {instance_destroy();}
    with(Boss02_60) {instance_destroy();}
    sprite_index = sprBoss01_24;
    image_index = 1;
    image_speed = 1/5;
    audio_play_sound(snd01_13, 0, false, world.sound_vol);
    friction = 0;
    gravity_direction = 0;
    gravity = 0.4;
    patt += 1;
    alarm[2] = 20;
} else if patt == 2 {
    gravity = 0;
    hspeed = 8;
    patt += 1;
    alarm[2] = 10;
} else {
    instance_create_depth(0, 0, -100, dark2);
    alarm[3] = 20;
}