var zx = instance_create_depth(0, 0, 0, soundEx2);
zx.M2 = world.Instance;
zx.M1 = audio_play_sound(global.stage03Bs2, 10, true);
zx.Vol = 0;
zx.ang = 0;
audio_sound_gain(zx.M1, world.music_vol, 0);
with(world) {filePlaying = 13; curMusic = global.stage03Bs2;}
world.Instance = zx.M1;

alarm[2] = 80;