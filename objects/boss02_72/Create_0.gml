image_speed = 0;
vspeed = -11;
gravity = 0.2;
audio_play_sound(snd02_30, 0, false);

var zx = instance_create_depth(x, y+70, -10, Boss02_n);
zx.image_index = 3;
zx.sid = id;
zx.oy = 70;

patt = 0;
alarm[0] = 45;