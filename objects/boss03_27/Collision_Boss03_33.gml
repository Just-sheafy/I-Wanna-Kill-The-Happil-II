var i, zx;

audio_play_sound(sndExplo, 0, false, world.sound_vol);
instance_destroy();
instance_create_depth(x, y, -5, Explo2);
for(i=0; i<30; i+=1) {
    zx = instance_create_depth(x, y, -1, Boss03_34);
    zx.hspeed = -6+12/30*i + random(12/30);
    zx.vspeed = random_range(-3, -10);
    zx.gravity = random_range(0.2, 0.3);
}
zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 30;