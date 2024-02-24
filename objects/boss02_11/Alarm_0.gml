var a = instance_create_depth(x, y, -1, Boss02_11);
a.vspeed = -8;
a.gravity = 0.3;
a.alarm[0] = 0;
alarm[0] = 2;
if (snd_enable) audio_play_sound(snd02_3, 0, false, world.sound_vol);