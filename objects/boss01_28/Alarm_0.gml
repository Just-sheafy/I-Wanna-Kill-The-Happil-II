var zx = instance_create_layer(0, 0, "Player", soundEx2);
zx.M2 = world.Instance;
zx.M1 = audio_play_sound(global.stage01Bs2, 10, true);
zx.Vol = 0;
zx.ang = 0;
audio_sound_gain(zx.M1, world.music_vol, 0);
with(world) {filePlaying = 3.5; curMusic = global.stage01Bs2; audio_sound_set_track_position(soundEx2.M1, a);}
alarm[1] = 100;