instance_create_depth(x+random_range(-70, 70), y+random_range(-120, 120), -5, Explo1);
instance_create_depth(x+random_range(-70, 70), y+random_range(-120, 120), -5, Explo1);
image_angle = random_range(-10, 10);
audio_play_sound(sndExplo, 0, false, world.sound_vol);
alarm[0] = 10;