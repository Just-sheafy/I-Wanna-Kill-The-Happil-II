if !nohit {
	if collision_rectangle(x-16, y-48, x+16, y-24, player, 1, 1) {
	    instance_destroy();
	    audio_play_sound(snd02_5, 0, false, world.sound_vol);
	    with(other) {vspd = -6; y -= 6; reset_jumps();}
	    var a = instance_create_depth(x, y, depth, Boss02_8);
	    a.x = 8*round(a.x/8);
	} else if collision_rectangle(x-13, y-48, x+13, y, player, 1, 1) {
	    with(player) kill_player();
	}
}