var i, zx;

for(i=0; i<4; i+=1) {
    zx = instance_create_depth(x, y, -1, Boss03_69);
    zx.direction = (patt*14+i*90) mod 360;
    zx.speed = 3;
    zx.gravity_direction = zx.direction;
    zx.gravity = 0.15;
    zx = instance_create_depth(x, y, -1, Boss03_69);
    zx.direction = (-patt*14+i*90) mod 360;
    zx.speed = 3;
    zx.gravity_direction = zx.direction;
    zx.gravity = 0.15;
}
audio_play_sound(snd02_17, 0, false, world.sound_vol);
patt += 1;
alarm[0] = 6;
if patt == 50 {
    gra = -0.15;
}