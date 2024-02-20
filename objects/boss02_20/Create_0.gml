audio_play_sound(snd02_12, 0, false);
image_alpha = 0.1;
vs = -4;
alarm[0] = 65;
alarm[1] = 55;
alarm[2] = 420;
alarm[3] = 400;
oy = y;
a = 0;
b = 0;
c = 0;
if x < 400 {image_xscale = -1;}
var zx = instance_create_depth(x, y, -10, Boss02_n);
zx.image_index = 2;
zx.sid = id;