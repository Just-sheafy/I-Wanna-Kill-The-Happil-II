if (patt != 1) exit;

var temp;

if (pat == 0) {
    alpha_aim = 1;
    pat += 1;
    alarm[0] = 50;
} else if (pat == 1) {
	if (instance_exists(player)) {
		temp = instance_create_depth(x, y, -50, surf_ripple);
	    temp.radius_max = 200;
	}
	
    alpha = 0;
    alpha_aim = 0;
    spd = 48;
    move_clockwise = !move_clockwise;
    audio_play_sound(snd04_38, 0, false);
    pat += 1;
    alarm[0] = 30;
} else if (pat == 2) {
    spd = 8;
    pat = 0;
    alarm[0] = irandom_range(50, 100);
}