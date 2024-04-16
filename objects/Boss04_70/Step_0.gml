var temp;

patt += 1;
if (patt <= 75) {
    radius = 210 + 540*power(1-patt/75, 2.5);
	if (angle_dir == 1) angle_speed = min(1, angle_speed + 0.02);
	else angle_speed = max(-1, angle_speed - 0.02);
} else if (patt <= 825) {
    radius = 220 - 10*cos(degtorad(patt-75));
    if (patt <= 325) {
        angle_speed = angle_dir*(1 + 1.5*(1-abs(cos(degtorad((patt-75)*180/250)))));
        angle2 += angle_dir*25/3*(1-abs(cos(degtorad((patt-75)*180/250))));
        if (patt == 300) {
            audio_play_sound(snd04_49, 0, false, world.sound_vol);
            with(Boss04_67) {
                temp = instance_create_depth(x, y, -4, Boss04_71);
                temp.sid = id;
            }
        }
    } else if (patt <= 575) {
        angle_speed = angle_dir*(1 - 1.5*(1+cos(degtorad((patt-75)*180/250))));
        angle2 -= angle_dir*8.5*(1-abs(cos(degtorad((patt-75)*180/250))));
        if (patt == 550) {
            audio_play_sound(snd04_50, 0, false, world.sound_vol);
            with(Boss04_67) {
                temp = instance_create_depth(x, y, -4, Boss04_71);
                temp.sid = id;
            }
        }
    } else if (patt <= 825) {
        angle_speed = -angle_dir*(2-((patt >= 715)? (patt-715)/110*1.5:0));
        angle2 += angle_dir*48.5/6*(1-abs(cos(degtorad((patt-75)*180/250))));
        if (patt == 715) {
            audio_play_sound(snd04_49, 0, false, world.sound_vol);
            with(Boss04_67) {
                temp = instance_create_depth(x, y, -4, Boss04_71);
                temp.sid = id;
            }
        }
        if (patt == 800) {
            audio_play_sound(snd04_51, 0, false, world.sound_vol);
            with(Boss04_67) {
                temp = instance_create_depth(x, y, -4, Boss04_71);
                temp.sid = id;
            }
        }
    }
} else if (patt <= 950) {
	if (patt == 900) {
		with(Boss04_55) {
			if (!is_riding and danger != 3) {
				danger = 2;
				danger_time = irandom_range(-50, 0);
				danger_time_max = 50;
			}
		}
		temp = instance_create_depth(room_width/2, room_height+32, -1, Boss04_55);
		temp.vspd = -5;
	}
    radius = 220 - 10*cos(degtorad(750)) + 540*power((patt-825)/125, 2.5);
    if (angle_dir == 1) angle_speed = min(0, angle_speed + 0.005);
	else angle_speed = max(0, angle_speed - 0.005);
} else {
	instance_destroy();
	with(num1) instance_destroy();
	with(num2) instance_destroy();
	with(num3) instance_destroy();
}