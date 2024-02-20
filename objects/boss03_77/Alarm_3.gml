var i;

for(i=0; i<3; i+=1) {
    instance_create_depth(x + random_range(-241, 242), y + 500 - random(568), -5, Explo1);
}
for(i=0; i<5; i+=1) {
    instance_create_depth(x + random_range(-241, 242), y + 500 - random(568), -5, Explo2);
}
audio_play_sound(sndExplo, 0, false);

alarm[3] = 7;