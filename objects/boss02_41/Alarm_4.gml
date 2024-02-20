instance_create_depth(0, 0, -100, light);
var zx = instance_create_depth(0, 0, 0, view_an2);
zx.asdf = 16;
audio_play_sound(snd02_18, 0, false);
instance_create_depth(x, y, -5, Explo1);
instance_destroy();