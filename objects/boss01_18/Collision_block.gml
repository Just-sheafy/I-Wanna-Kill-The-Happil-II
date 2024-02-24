var i, zx, as = choose(1/2, -1/2);

instance_destroy();
instance_create_depth(x, y, -5, Boss02_35);
audio_play_sound(sndExplo, 0, false, world.sound_vol);
audio_play_sound(sndShoot, 0, false, world.sound_vol);
if a {zx = instance_create_depth(x, y, 0, Boss01_39);}
for(i=0; i<40; i+=1) {
    if !a {zx = instance_create_depth(x, y, -2, Boss01_19);} else {zx = instance_create_depth(x, y, -2, Boss01_38);}
    zx.image_xscale = 4;
    zx.image_yscale = 4;
    zx.direction = 9*i;
    zx.speed = 10;
	if (y <= 64) {zx.speed = 12; zx.as = as;}
}
for(i=0; i<24; i+=1) {
    if !a {zx = instance_create_depth(x, y, -2, Boss01_19);} else {zx = instance_create_depth(x, y, -2, Boss01_38);}
    zx.image_xscale = 8;
    zx.image_yscale = 8;
    zx.direction = 15*i;
    zx.speed = 8;
	if (y <= 64) {zx.speed = 10; zx.as = -as;}
}
for(i=0; i<40; i+=1) {
    if !a {zx = instance_create_depth(x, y, -2, Boss01_19);} else {zx = instance_create_depth(x, y, -2, Boss01_38);}
    zx.image_xscale = 4;
    zx.image_yscale = 4;
    zx.direction = 9*i+2;
    zx.speed = 6;
	if (y <= 64) {zx.speed = 8; zx.as = as;}
}