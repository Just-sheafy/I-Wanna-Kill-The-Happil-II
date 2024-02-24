image_xscale = 0.5;
image_yscale = 0.5;
image_alpha = 1;
shoot = 1;
var zx = instance_create_depth(x, y, -5, Explo2);
zx.image_xscale = 2/3;
zx.image_yscale = 2/3;
zx = instance_create_depth(x, y, -4, fruit);
zx.image_xscale = 2;
zx.image_yscale = 2;
zx.alarm[10] = 8;
zx.visible = false;
if b {audio_play_sound(sndExplo, 0, false, world.sound_vol);}
if a {
    zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 10;
}