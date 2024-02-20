var i, zx;

zx = instance_create_depth(x, y, -50, surf_ripple);
zx.radius_max = 300;
audio_play_sound(sndBlockChange, 0, false);
for(i=0; i<8; i+=1) {
    zx = instance_create_layer(x, y, "Player", Boss03Sr_6);
    zx.speed = 16;
    zx.direction = 45*i;
    zx.a = 2;
}
instance_create_depth(0, 0, -100, light);
instance_destroy();