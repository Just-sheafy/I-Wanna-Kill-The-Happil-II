image_speed = 1/5;
hspeed = choose(2.5, -2.5);
vspeed = -random_range(2, 5);
var zx = instance_create_depth(0, 0, 0, view_an2);
zx.asdf = 8;
audio_play_sound(snd02_2, 0, false);