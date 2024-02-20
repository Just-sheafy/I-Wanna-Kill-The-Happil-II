vspeed = -random_range(5, 9);
hspeed = choose(3, -3);
gravity = 0.4;
var zx = instance_create_depth(0, 0, 0, view_an2);
zx.asdf = 8;
audio_play_sound(snd02_2, 0, false);