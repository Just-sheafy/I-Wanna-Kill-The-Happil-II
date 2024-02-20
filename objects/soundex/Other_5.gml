audio_sound_gain(M1, world.music_vol, 0);
audio_sound_gain(M2, world.music_vol, 0);
if !nope {
    world.Instance = M1;
    audio_stop_sound(M2);
} else {
    world.Instance = M2;
    audio_stop_sound(M1);
}