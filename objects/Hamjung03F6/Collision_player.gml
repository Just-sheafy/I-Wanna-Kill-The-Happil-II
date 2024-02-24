if other.Gravity != image_index {
    with(other) player_vjump();
    other.vspd = 0;
    audio_play_sound(sndVJump, 0, false, world.sound_vol);
}