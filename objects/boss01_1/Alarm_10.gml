if !instance_exists(player) {exit;}
instance_create_depth(x, y-64, -1, Boss01_13);
audio_play_sound(snd01_1, 0, false);
alarm[10] = 120;