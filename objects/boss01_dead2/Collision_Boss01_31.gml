instance_create_depth(0, 0, -100, light);
instance_create_layer(0, 0, "Player", Boss01_33);
var a = instance_create_depth(x, y, 0, bloodSquirt);
a.xx = x; a.yy = y; a.Gravity = 1;
audio_play_sound(snd01_5, 0, false);
audio_play_sound(sndDeath, 0, false);
instance_destroy();
var zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 50;