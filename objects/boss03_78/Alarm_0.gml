var i, zx;

b = 2;
for(i=0; i<15; i+=1) {
    zx = instance_create_depth(x, y, -3, Boss03_8);
    zx.direction = 360/15*i+random(360/15);
    zx.speed = random_range(4, 8);
    if a {zx.as = choose(-0.5, 0.5);}
}
audio_play_sound(snd02_11, 0, false);