var a = instance_create_depth(x, y, -3, Boss02_40);
a.direction = image_angle;
a.speed = 6;
alarm[1] = 12;
audio_play_sound(snd02_17, 0, false, world.sound_vol);