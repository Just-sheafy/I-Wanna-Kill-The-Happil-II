if (global.practice == 4) {
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
	room_goto(Stage03Bs);
	exit;
}

var zx = instance_create_depth(0, 0, 0, soundEx2);
zx.M2 = world.Instance;
zx.M1 = audio_play_sound(global.stage03Bs2, 10, true, 0);
zx.Vol = 0;
zx.ang = 0;
audio_sound_gain(zx.M1, world.music_vol, 0);
with(world) {filePlaying = 13; curMusic = global.stage03Bs2;}
world.Instance = zx.M1;

alarm[2] = 80;