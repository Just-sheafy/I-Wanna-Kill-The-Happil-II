var i, zx;

for(i=0; i<3; i+=1) {
    zx = instance_create_depth(x, y-64, -2, Boss01_19);
    zx.direction = 360/3*i+random(360/3);
    zx.image_xscale = 4;
    zx.image_yscale = 4;
    zx.image_angle = zx.direction;
    zx.speed = random_range(6, 12);
    zx.friction = 0.3;
}
audio_play_sound(sndShoot, 0, false, world.sound_vol);
alarm[10] = 3;