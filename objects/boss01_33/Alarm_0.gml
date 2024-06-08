if (global.practice == 8) {
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
	room_goto(Stage01Bs);
	exit;
}

if !instance_exists(player) {exit;}
with(player) {depth = -16;}
var zx = instance_create_depth(0, 0, -10, dark4);
zx.alarm[0] = 50;
zx.c = 1;