direction = point_direction(x, y, 400, 304);
speed = point_distance(x, y, 400, 304)/40;
alarm[0] = 40;
audio_play_sound(snd01_2, 0, false);
image_speed = 1/2;