audio_sound_gain(M1, world.music_vol, 0);
audio_sound_gain(M2, 0, 0);
world.Instance = M1;
audio_stop_sound(M2);