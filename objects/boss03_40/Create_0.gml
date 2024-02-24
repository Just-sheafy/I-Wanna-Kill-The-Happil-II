vs = 8;
oy = y;
d = 0;
patt = 0;
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 13;
zx.sid = id;
zx.image_alpha = 1;
zx.a = -1;
alarm[0] = 45;
alarm[11] = 3;

audio_play_sound(snd03_34, 0, false, world.sound_vol);