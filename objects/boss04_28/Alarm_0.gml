var i;

instance_create_depth(x + random_range(-36, 36)*cos(degtorad(image_angle)),
    y - random_range(-24, 24)*sin(degtorad(image_angle)), -6, Explo1);

for(i=0; i<2; i+=1) {
    instance_create_depth(x + random_range(-36, 36)*cos(degtorad(image_angle)),
        y - random_range(-24, 24)*sin(degtorad(image_angle)), -6, Explo2);
}
audio_play_sound(sndExplo, 0, false, world.sound_vol);

alarm[0] = 10;