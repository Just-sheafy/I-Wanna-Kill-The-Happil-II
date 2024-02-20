audio_play_sound(snd03_16, 0, false);
vspeed = -18;
gravity = 0.3;
image_speed = 0;
image_xscale = 1.5;
image_yscale = 1.5;
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 8;
zx.sid = id;
zx.ox = -11;
zx.oy = 44;
zx.image_alpha = 1;
zx.a = -1;

alarm[0] = 12;