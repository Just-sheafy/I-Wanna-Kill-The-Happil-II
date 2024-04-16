image_speed = 0;

ox = x;
oy = y;
x_origin = x;
y_origin = y;

foot_0 = instance_create_depth(256, -64, -3, Boss04_61);
foot_1 = instance_create_depth(544, -64, -3, Boss04_61);
foot_1.index = 1;

vol = 0;
time = 0;
Instance = audio_play_sound(snd02_1, 0, true, vol*world.sound_vol);