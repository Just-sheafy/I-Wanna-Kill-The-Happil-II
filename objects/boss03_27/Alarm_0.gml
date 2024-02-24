var i, zx;

for(i=0; i<choose(1, 2); i+=1) {
    zx = instance_create_depth(x, y, -1, Boss03_28);
    zx.direction = random_range(180, 360);
    zx.speed = 8;
}
audio_play_sound(snd03_14, 0, false, world.sound_vol);
alarm[0] = 4;