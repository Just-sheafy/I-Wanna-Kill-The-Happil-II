var i, zx;

for(i=0; i<10; i+=1) {
    instance_create_depth(x + random_range(-241, 242), y + 500 - random(568), -5, Explo1);
}
for(i=0; i<15; i+=1) {
    instance_create_depth(x + random_range(-241, 242), y + 500 - random(568), -5, Explo2);
}
instance_create_depth(0, 0, -100, light);
zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 30;
vspeed = 10;
audio_play_sound(sndExplo, 0, false);

alarm[2] = 30;