var i, a;

c[0] = choose(-50, 50);
c[1] = choose(-50, 50);
for(i=0; i<10; i+=1) {
    a = instance_create_depth(x+c[0], y+c[1], -2, Boss02_18);
    a.direction = 36*i;
    a.speed = 6;
    a.as = 0.6;
    a = instance_create_depth(x+c[0], y+c[1], -2, Boss02_18);
    a.direction = 36*i;
    a.speed = 6;
    a.as = -0.6;
}
instance_create_depth(x+c[0], y+c[1], -5, Explo3);
c = 0;
audio_play_sound(snd02_11, 0, false, world.sound_vol);
alarm[0] = 45;