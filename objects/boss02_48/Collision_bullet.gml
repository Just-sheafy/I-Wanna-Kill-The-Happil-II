if ang and canmove {
    canmove = 0;
    with(other) {instance_destroy();}
    alarm[0] = 400;
    audio_play_sound(snd02_20, 0, false, world.sound_vol);
}