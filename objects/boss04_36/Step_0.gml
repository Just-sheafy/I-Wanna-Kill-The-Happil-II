var val, xx0, yy0, xx1, yy1, temp, dir, angle_diff;

with(player) max_hspd = 4;

if (!jumping) {
    xx0 = (foot_0.x + 2*foot_0.x_after)/3;
    yy0 = (foot_0.y + 2*foot_0.y_after)/3;
    xx1 = (foot_1.x + 2*foot_1.x_after)/3;
    yy1 = (foot_1.y + 2*foot_1.y_after)/3;
    
    dir = point_direction(xx0, yy0, xx1, yy1);
    ox = (xx0+xx1)/2;
    ox_over = (ox >= 400);
    ox -= 160*abs(sin(degtorad(dir))) * (2*ox_over-1);
    oy = (yy0+yy1)/2;
    oy_over = (oy >= 304);
    oy -= 160*abs(cos(degtorad(dir))) * (2*oy_over-1);
    
    x_origin += (ox-x_origin)/40;
    y_origin += (oy-y_origin)/40;
} else {
    xx0 = (foot_0.x + 2*foot_0.x)/3;
    yy0 = (foot_0.y + 2*foot_0.y)/3;
    xx1 = (foot_1.x + 2*foot_1.x)/3;
    yy1 = (foot_1.y + 2*foot_1.y)/3;
    
    dir = point_direction(xx0, yy0, xx1, yy1);
    ox = (xx0+xx1)/2;
    ox -= 160*abs(sin(degtorad(dir))) * (2*ox_over-1);
    oy = (yy0+yy1)/2;
    oy -= 160*abs(cos(degtorad(dir))) * (2*oy_over-1);
    
    x_origin += (ox-x_origin)/15;
    y_origin += (oy-y_origin)/15;
}

d += 4;
x = x_origin + 5*sin(degtorad(image_angle))*sin(degtorad(d));
y = y_origin + 5*cos(degtorad(image_angle))*sin(degtorad(d));

if (!jumping) {
    angle = point_direction(ox, oy, (xx0+xx1)/2, (yy0+yy1)/2)+90;
    angle_diff = (angle - image_angle) mod 360;
    while(angle_diff < 0) angle_diff += 360;
    
    if (angle_preserved == 0) {
        if (angle_diff >= 180) angle_diff -= 360;
        if (angle_diff >= 90) angle_preserved = 1;
        if (angle_diff <= -90) angle_preserved = -1;
    } else if (angle_preserved == 1) {
        if (angle_diff <= 90) angle_preserved = 0;
    } else {
        angle_diff -= 360;
        if (angle_diff >= -90) angle_preserved = 0;
    }
    image_angle += angle_diff/16;
}

t += abs(t_spd);
t2 += abs(t_spd);

if (t >= 32 && t_spd < 0) {
	t -= 64;
	val = false;
	if (t2 >= 192) { t2 -= 384; val = ((hp0+hp1) <= (hpm0+hpm1)/3); }
	
	temp = instance_create_depth(32, 0, 5, Boss04_40);
	if (val) temp.grav_dir = 180;
	temp.vspeed = abs(t_spd);
	temp = instance_create_depth(800-32, 608, 5, Boss04_40);
	temp.grav_dir = 180;
	if (val) temp.grav_dir = 0;
	temp.vspeed = -abs(t_spd);

	temp = instance_create_depth(800, 32, 5, Boss04_40);
	temp.grav_dir = 270;
	if (val) temp.grav_dir = 90;
	temp.hspeed = -abs(t_spd);
	temp = instance_create_depth(0, 608-32, 5, Boss04_40);
	temp.grav_dir = 90;
	if (val) temp.grav_dir = 270;
	temp.hspeed = abs(t_spd);
}

if (t >= 32 && t_spd > 0) {
	t -= 64;
	val = false;
	if (t2 >= 192) { t2 -= 384; val = ((hp0+hp1) <= (hpm0+hpm1)/3); }
	
	temp = instance_create_depth(32, 608, 5, Boss04_40);
	if (val) temp.grav_dir = 180;
	temp.vspeed = -abs(t_spd);
	temp = instance_create_depth(800-32, 0, 5, Boss04_40);
	temp.grav_dir = 180;
	if (val) temp.grav_dir = 0;
	temp.vspeed = abs(t_spd);

	temp = instance_create_depth(0, 32, 5, Boss04_40);
	temp.grav_dir = 270;
	if (val) temp.grav_dir = 90;
	temp.hspeed = abs(t_spd);
	temp = instance_create_depth(800, 608-32, 5, Boss04_40);
	temp.grav_dir = 90;
	if (val) temp.grav_dir = 270;
	temp.hspeed = -abs(t_spd);
}

while(image_angle < 0) image_angle += 360;
while(image_angle >= 360) image_angle -= 360;
if (image_angle >= 315 || image_angle < 45) {
	back_effect.col_after[0] = 15;
	back_effect.col_after[1] = 0;
	back_effect.col_after[2] = 1;
} else if (image_angle >= 45 && image_angle < 135) {
	back_effect.col_after[0] = 15;
	back_effect.col_after[1] = 15;
	back_effect.col_after[2] = 1;
} else if (image_angle >= 135 && image_angle < 225) {
	back_effect.col_after[0] = 1;
	back_effect.col_after[1] = 15;
	back_effect.col_after[2] = 15;
} else {
	back_effect.col_after[0] = 0;
	back_effect.col_after[1] = 15;
	back_effect.col_after[2] = 1;
}

blackhole_angle -= 10;
if (blackhole) {
	blackhole_alpha = min(1, blackhole_alpha + 0.05);
} else {
	blackhole_alpha = max(0, blackhole_alpha - 0.05);
}
if (blackhole_alpha > 0) {
	back_effect.col_after[0] = 8;
	back_effect.col_after[1] = 0;
	back_effect.col_after[2] = 8;
}
back_effect.t_spd_extra = 3*blackhole_alpha;

val = audio_sound_get_track_position(world.Instance);
if (world.curMusic == global.stage04Bs3 and val >= 89.7
	or world.curMusic == global.stage04Bs3Loop) {
	with(surf_lens) assault = true;
}
if ((world.curMusic == global.stage04Bs3 and val >= 91.6)
	or world.curMusic == global.stage04Bs3Loop
	or audio_sound_length(global.stage04Bs3) < 92) {
	move_faster = true;
	
	if (audio_sound_length(global.stage04Bs3) >= 92) {
		var num = 0;
		if (world.curMusic == global.stage04Bs3) {
			with(world) {
	            if filePlaying != 22.5 and curMusic != global.stage04Bs3Loop {
	                audio_stop_sound(Instance);
	                filePlaying = 22.5;
	                curMusic = global.stage04Bs3Loop;
	                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	            }
	        }
			
			audio_sound_set_track_position(world.Instance, val - 91.6);
			audio_sound_pitch(world.Instance, world.music_sp);
			val -= 91.6;
		}
		while(val >= 0.457) {
			val -= 0.457; num++;
		}
		
		if (num >= 80 && num < 82) {
			while(val >= 0.457/8) {
				val -= 0.457/8; num += 1/8;
			}
		} else if (num >= 152 && num < 164) {
			num = 152+4*floor((num-152)/4);
		} else if (num >= 164 && num < 168) {
			while(val >= 0.457/4) {
				val -= 0.457/4; num += 1/4;
			}
		} else if (num >= 168) {
			val -= 0.457*2/5;
			if (val < 0) num = base_before;
		}
		
		// skip
		if (num == 41 || num == 49 || num == 65 || num == 66 || num == 80 || num == 81 ||
			num == 201 || num == 202 || num == 232)
			base_before = num;
		
		if (base_before != num) {
			base_before = num;
			with(Boss04_40) {
				var temp = instance_create_depth(x, y, depth, Boss04_53);
				temp.sid = id;
				temp.grav_dir = grav_dir;
				temp.t = t;
				if (Boss04_36.base_before == 40 || Boss04_36.base_before == 48 ||
					Boss04_36.base_before == 64 || Boss04_36.base_before == 200 ||
					(Boss04_36.base_before >= 152 && Boss04_36.base_before < 168)) temp.scale = 2;
			}
			/*
			with(Boss04_41) {
				var temp = instance_create_depth(x, y, depth, Boss04_53);
				temp.sid = id;
				temp.image_index = image_index;
				temp.index = image_index;
				temp.grav_dir = -1;
				temp.t = 33;
			}
			with(back_effect) {
				t += 8*spd*(t_spd + sign(t_spd)*t_spd_extra) / room_speed;
			}
			*/
		}
	}
} else move_faster = false;