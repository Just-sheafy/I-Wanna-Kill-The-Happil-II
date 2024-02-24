instance_destroy();
instance_create_depth(0, 0, -100, light);
var zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 30;
audio_play_sound(snd03_31, 0, false, world.sound_vol);