var zx;

if (!instance_exists(player)) exit;

if patt == 0 {
	if (global.practice == 6) {
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
	
    zx = instance_create_depth(-150, player.y, -2, Boss03_58);
    zx.hspeed = 6;
    zx.gravity_direction = 0;
    zx.gravity = 0.1;
    if aa == 1 {
        aa = 2;
        with(zx) {
            var a = instance_create_depth(x, y, -10, Boss03_n);
            a.image_index = 19;
            a.sid = id;
        }
        instance_create_depth(640, 304, -3, Boss03_59);
    }
    patt += 1;
    alarm[2] = 200;
} else if patt == 1 {
    zx = instance_create_depth(950, player.y, -2, Boss03_58);
    zx.hspeed = -6;
    zx.gravity_direction = 180;
    zx.gravity = 0.1;
    patt = 0;
    alarm[2] = 200;
}