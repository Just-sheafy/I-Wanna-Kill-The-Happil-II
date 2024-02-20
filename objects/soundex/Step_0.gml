if !instance_exists(player) and arck {audio_stop_sound(M2); exit;}
if ang {
    Vol -= 0.02*world.music_vol;
    if Vol <= 0 {Vol = 0;}
} else {
    Vol += 0.02*world.music_vol;
    if Vol >= world.music_vol {instance_destroy();}
}
audio_sound_gain(M1, Vol, 0);
audio_sound_gain(M2, world.music_vol-Vol, 0);