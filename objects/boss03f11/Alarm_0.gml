var zx = instance_create_depth(0, 0, 0, soundEx2);
zx.M2 = world.Instance;
zx.M1 = audio_play_sound(global.stage03Bs3, 10, true, 0);
zx.Vol = 0;
zx.ang = 0;
audio_sound_gain(zx.M1, world.music_vol, 0);
with(world) {filePlaying = 15; curMusic = global.stage03Bs3;}
world.Instance = zx.M1;

alarm[1] = 90;