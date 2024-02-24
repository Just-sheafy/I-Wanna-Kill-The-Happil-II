var zx;

if patt < 8 {
    audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
    patt += 1;
    alarm[0] = 2;
    if patt == 8 {alarm[0] += 15;}
} else if patt == 8 {
    friction = 0;
    speed = 0;
    x = 400;
    y = 272;
    patt += 1;
    alarm[0] = 35;
} else if patt == 9 {
    if !instance_exists(player) {exit;}
    zx = instance_create_depth(x, y, -2, Boss03_44);
    zx.direction = random(360);
    zx.speed = random_range(3, 5);
    alarm[0] = 5;
}