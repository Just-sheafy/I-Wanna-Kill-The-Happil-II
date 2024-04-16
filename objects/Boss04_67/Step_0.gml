if (image_index == 0) {
	if (mode <= 2) {
		z_spd = max(z_spd + z_grav, -2.4);
		zz += z_spd;
		if (mode == 0) {
			if (zz < 0) z_grav = 0.08;
			if (z_spd >= 1) { radius_sp *= -1; mode = 1; }
		} else if (mode == 1) {
			if (x <= -170 or x >= room_width + 170 or y <= -170 or y >= room_height + 170) {
				if (!snd_valid) instance_destroy();
				else { mode = 2; alarm[0] = 20; }
			}
		}

		if (mode == 0) radius -= radius_sp*sign(z_grav);
		else if (mode == 1) {
			radius_sp = min(4.8, radius_sp + 0.2);
			radius += radius_sp;
		}
		theta += 1.2;

		x = room_width/2 + lengthdir_x(radius, theta);
		y = room_height/2 + lengthdir_y(radius, theta);
		depth = floor(zz/2);
		image_xscale = 4/(1+zz/125);
		image_yscale = 4/(1+zz/125);
		if (zz < 10) {
			if (snd_valid and Instance == -1 and mode == 0)
				Instance = audio_play_sound(snd04_47, 0, false, world.sound_vol);
			image_alpha = min(1, image_alpha+0.02);
		} else {
			if (snd_valid and Instance != -1) Instance = -1;
			if (image_alpha < 0.25) image_alpha += 0.01;
			image_alpha = max(0.25, image_alpha-0.01);
		}
	} else {
		image_angle += 5;
		if (instance_exists(Boss04_55)) {
			x = Boss04_55.x;
			y += Boss04_55.y - Boss04_55.yprevious;
		}
	}
} else if (image_index == 3) {
	if (mode == 0) {
		mode_num = min(mode_num+1, 74);
		if (x < 400) x = 400-535*(1-sin(degtorad(mode_num*90/74)));
		else if (x > 400) x = 400+535*(1-sin(degtorad(mode_num*90/74)));
	} else {
		if (instance_exists(player)) {
			if (-sin(degtorad(theta))*(player.x-room_width/2)-cos(degtorad(theta))*(player.y-room_height/2) >= 0)
				orient = 0;
			else orient = 1;
		}
		
		if (mode == 1) { with(Boss04_76) { alpha = min(alpha+0.025, 1); } }
		else if (mode <= 5) {
			mode_num = min(mode_num + 1, 400);
			theta_prev = theta;
			theta = 90 + ((mode >= 4)? 180:0) + ((mode == 2 or mode == 4)? 1:-1) * 90*(sin(degtorad((mode_num-200)*90/200))+1);
			
			var epsilon = 0.05;
			if (abs(cos(degtorad(theta))) <= epsilon) image_yscale = 608/68/abs(sin(degtorad(theta)));
			else if (abs(sin(degtorad(theta))) <= epsilon) image_yscale = 800/68/abs(cos(degtorad(theta)));
			else image_yscale = min(608/68/abs(sin(degtorad(theta))), 800/68/abs(cos(degtorad(theta))));
			image_angle = theta-90;
			
			if (mode <= 3) { with(Boss04_76) { alpha = min(alpha+0.025, 1); } }
			else { with(Boss04_76) { alpha = max(alpha-0.01, 0); } }
			with(Boss04_76) { dir = Boss04_67.theta; }
			with(Boss04_77) angle += Boss04_67.theta-Boss04_67.theta_prev;
		} else {
			mode_num = min(mode_num+1, 200);
			y = 304+800*(1-cos(degtorad(mode_num*90/200)));
		}
		
		if (orient == 1) {
			with(Boss04_77) {
				x = room_width/2 + (xx-room_width/2)*sin(degtorad(Boss04_67.theta))
					- (yy-room_height/2)*cos(degtorad(Boss04_67.theta));
				y = room_height/2 + (xx-room_width/2)*cos(degtorad(Boss04_67.theta))
					+ (yy-room_height/2)*sin(degtorad(Boss04_67.theta));
			}
		} else {
			with(Boss04_77) {
				x = room_width/2 + xx*sin(degtorad(Boss04_67.theta))
					- (yy-room_height/2)*cos(degtorad(Boss04_67.theta));
				y = room_height/2 + xx*cos(degtorad(Boss04_67.theta))
					+ (yy-room_height/2)*sin(degtorad(Boss04_67.theta));
			}
		}
	}
}