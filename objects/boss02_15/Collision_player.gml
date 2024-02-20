if collision_rectangle(x-16, y-48, x+16, y-24, player, 1, 1) {
    instance_destroy();
    audio_play_sound(snd02_5, 0, false);
    with(other) {vspd = -6; y -= 6; reset_jumps();}
    var a = instance_create_depth(x, y, depth, Boss02_8);
    a.x = 8*round(a.x/8);
} else {
    with(player) kill_player();
}