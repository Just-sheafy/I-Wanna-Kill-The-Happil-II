alarm[0] = 90;
alarm[2] = 58;
image_speed = 0;
image_index = 1;
vspeed = 8;
audio_play_sound(sndCherry, 0, false, world.sound_vol);
var zx = instance_create_depth(x, y, -10, Boss01_n);
zx.image_index = 7;
zx.sid = id;
zx.ox = -91;
zx.image_alpha = 1;
zx.a = -1;