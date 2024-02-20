if ang == 1 and hp > 0 {
    hp -= 2;
    with(other) {instance_destroy();}
    audio_play_sound(sndBossHit, 0, false);
}