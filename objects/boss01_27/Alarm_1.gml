if (global.practice == 5) {
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

instance_create_depth(x+220, y-226, 0, Boss01_23);
a = 1;
with(player) {
    instance_destroy();
	var zx = instance_create_depth(x, y, -2, Boss02_60);
    zx.direction = point_direction(x, y, Boss01_27.x+220, Boss01_27.y-226);
	zx.speed = point_distance(x, y, Boss01_27.x+220, Boss01_27.y-226)/92;
}
with(playerHealth) {not_check = true;}
alarm[2] = 52;
sprite_index = sprBoss01_25;