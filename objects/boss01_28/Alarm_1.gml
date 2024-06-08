if a == 0 {
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
		room_goto(Stage01Bs);
		exit;
	}
	
    instance_create_depth(0, 0, -100, dark2);
    a += 1;
    alarm[1] = 20;
} else {
    with(player) {x = 320; y = 480;}
	with(playerHealth) {world.hp_before = hp;}
    room_goto(Stage01Bs3);
    world.re_nodie = true;
}