if !instance_exists(player) {audio_stop_sound(M2); exit;}
if ang {
    Vol -= world.music_vol/time_max;
    if Vol <= 0 {Vol = 0;}
} else {
    Vol += world.music_vol/time_max;
    if Vol >= world.music_vol {instance_destroy();}
}
audio_sound_gain(M1, Vol, 0);
audio_sound_gain(M2, world.music_vol-Vol, 0);