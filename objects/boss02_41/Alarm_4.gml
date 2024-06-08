if (global.practice == 7) {
	with(player) { instance_destroy(); }
	with(world) {
		warn = 0;
		hp_before = -1;
		var_temp = 0;
		audio_stop_channel(1);
		audio_stop_channel(2);
		music_speed = 1;
		music_sp = 1;
		audio_resume_sound(Instance);
	}
	room_goto(Stage02Bs);
	exit;
}

instance_create_depth(0, 0, -100, light);
var zx = instance_create_depth(0, 0, 0, view_an2);
zx.asdf = 16;
audio_play_sound(snd02_18, 0, false, world.sound_vol);
instance_create_depth(x, y, -5, Explo1);
instance_destroy();