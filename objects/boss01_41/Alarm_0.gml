hspeed *= 2;
vspeed *= -1;

bump = true;

var a = instance_create_depth(0, 0, 0, view_an1);
a.asdf = 20;

audio_play_sound(snd01_15, 0, false, world.sound_vol);