var zx = instance_create_depth(0, 0, 0, view_an1);
zx.asdf = 5;
audio_play_sound(snd02_14, 0, false, world.sound_vol);
zx = instance_create_depth(x+random_range(50, -50), y+random_range(50, -50), -5, Explo1);
zx.image_xscale = 1/2;
zx.image_yscale = 1/2;
alarm[2] = 8;