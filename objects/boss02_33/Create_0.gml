image_xscale = 4;
image_yscale = 4;
vspeed = 30;
alarm[0] = 24;
audio_play_sound(sndSpikeTrap, 0, false);
image_speed = 0;
a = 0;
instance_create_depth(0, 0, -8, Boss02_h);
var zx = instance_create_depth(x, y-380, -10, Boss02_n);
zx.image_index = 8;
zx.sid = id;
zx.oy = -380;
zx.image_alpha = 1;
zx.a = -1;

zx = instance_create_depth(x-45, y-399, -4, Boss02_73);
zx.sid = id;
zx.ox = -45;
zx.oy = -399;

zx = instance_create_depth(x+45, y-399, -4, Boss02_73);
zx.image_xscale *= -1;
zx.sid = id;
zx.ox = 45;
zx.oy = -399;