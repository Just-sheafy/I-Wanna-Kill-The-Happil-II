var i, zx;

if a == 0 {
    a = 1;
    sprite_index = sprBoss03_33;
    hspeed = -hspeed/3;
    vspeed = -8;
    gravity = 0.2;
    audio_play_sound(snd03_19, 0, false, world.sound_vol);
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(x, y, -2, Boss03_38);
        zx.hspeed = choose(1, -1)*random_range(0.5, 3.5);
        zx.vspeed = random_range(-4, -10);
    }
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
}
if a == 2 {
    a = 3;
    sprite_index = sprBoss03_33;
    hspeed = -hspeed/3;
    vspeed = -random_range(6, 10);
    gravity = 0.2;
    audio_play_sound(snd03_19, 0, false, world.sound_vol);
    for(i=0; i<10; i+=1) {
        zx = instance_create_depth(x, y, -2, Boss03_38);
        zx.hspeed = choose(1, -1)*random_range(2.5, 7);
        zx.vspeed = random_range(-2, -5);
    }
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
}