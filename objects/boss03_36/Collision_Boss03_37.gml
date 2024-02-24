var i, zx;

if a == 0 {
    audio_play_sound(snd03_18, 0, false, world.sound_vol);
    a = 1;
    sprite_index = sprBoss03_31;
    hspeed = -hspeed/3;
    vspeed = -8;
    gravity = 0.2;
    for(i=0; i<5; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
}
if a == 2 {
    audio_play_sound(snd03_18, 0, false, world.sound_vol);
    a = 3;
    sprite_index = sprBoss03_31;
    hspeed = -hspeed/3;
    vspeed = -random_range(6, 10);
    gravity = 0.2;
    for(i=0; i<5; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 10;
    }
}