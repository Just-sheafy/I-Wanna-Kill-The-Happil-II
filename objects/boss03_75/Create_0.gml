var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 25;
zx.sid = id;
audio_play_sound(snd03_31, 0, false, world.sound_vol);
patt = 0;
alarm[0] = 5;
alarm[1] = 450;