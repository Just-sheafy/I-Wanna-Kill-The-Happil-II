if collision_rectangle(x-16, y-24, x+16, y, player, 1, 1) {
    instance_destroy();
    audio_play_sound(snd02_5, 0, false);
    with(other) {vspd = -6; y -= 6; reset_jumps();}
    instance_create_depth(x, y+24, depth, Boss02_15);
} else {
    with(player) kill_player();
}