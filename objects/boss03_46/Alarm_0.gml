var zx;

if patt == 0 {
    zx = instance_create_depth(x, y, -10, Boss03_n);
    zx.image_index = 16;
    zx.sid = id;
    audio_play_sound(snd03_22, 0, false, world.sound_vol);
    instance_create_depth(160, 304, -2, Boss03_55);
    instance_create_depth(640, 304, -2, Boss03_54);
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 50;
    patt += 1;
    alarm[0] = 50;
} else if patt == 1 {
    instance_create_depth(choose(random(288), random_range(512, 800)), random(608), -3, Boss03_52);
    audio_play_sound(snd03_23, 0, false, world.sound_vol);
    if nothit {nothit = 0;}
    alarm[0] = 25;
}