if collision_rectangle(x-16, y-24, x+16, y, player, 1, 1) {
    instance_destroy();
    audio_play_sound(snd02_5, 0, false, world.sound_vol);
    with(other) {vspd = -6; y -= 6; reset_jumps();}
    temp = instance_create_depth(x, y+24, depth, Boss02_15);
	temp.nohit = true;
	temp.alarm[0] = 20;
} else if collision_rectangle(x-13, y-24, x+13, y+24, player, 1, 1) {
    with(player) kill_player();
}