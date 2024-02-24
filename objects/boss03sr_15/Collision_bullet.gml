if hp > 0 {
    with(other) {instance_destroy();}
    hp -= 1;audio_play_sound(sndBossHit, 0, false, world.sound_vol);
}