image_speed = 0;
image_xscale = 4;
image_yscale = 4;
hspeed = 22;
gravity_direction = 180;
gravity = 0.4;
alarm[0] = 11;
alarm[11] = 2;
audio_play_sound(snd03_9, 0, false);
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 9;
zx.sid = id;
zx.ox = -256;
zx.oy = -204;
zx.image_alpha = 1;
zx.a = -1;