if (!other.revive) {
    with(other) instance_destroy();
    audio_play_sound(sndDeath, 0, false, world.sound_vol);
    instance_create_depth(other.x, other.y, -1, Boss03Sr_12);
    hp = 3;
}