var xx, yy, dist, temp, l, foot_changed, foot_stay;

if (patt < NUM) {
	jumping = false;
	if (!move_next) {
	    foot_changed = foot_0;
	    foot_stay = foot_1;
	} else {
	    foot_changed = foot_1;
	    foot_stay = foot_0;
	}

	dist = irandom_range(200, 320);

	if (!move_clockwise) {

	if (foot_stay.angle == 0) {
	    xx = foot_stay.x+dist;
	    yy = foot_stay.y;
	    foot_changed.angle = 0;
	    if (xx > 736-80) {
	        yy = min(544-80, 544-(xx-736+80));
	        xx = 736-48;
	        foot_changed.angle = 90;
	        foot_changed.image_angle += 2;
	    }
	} else if (foot_stay.angle == 90) {
	    xx = foot_stay.x;
	    yy = foot_stay.y-dist;
	    foot_changed.angle = 90;
	    if (yy < 64+80) {
	        xx = min(736-80, 736-(64+80-yy));
	        yy = 64+48;
	        foot_changed.angle = 180;
	        foot_changed.image_angle += 2;
	    }
	} else if (foot_stay.angle == 180) {
	    xx = foot_stay.x-dist;
	    yy = foot_stay.y;
	    foot_changed.angle = 180;
	    if (xx < 64+80) {
	        yy = max(64+80, 64+(64+80-xx));
	        xx = 64+48;
	        foot_changed.angle = 270;
	        foot_changed.image_angle += 2;
	    }
	} else {
	    xx = foot_stay.x;
	    yy = foot_stay.y+dist;
	    foot_changed.angle = 270;
	    if (yy > 544-80) {
	        xx = max(64+80, 64+(yy-544+80));
	        yy = 544-48;
	        foot_changed.angle = 360;
	        foot_changed.image_angle += 2;
	    }
	}

	} else {

	if (foot_stay.angle == 0) {
	    xx = foot_stay.x-dist;
	    yy = foot_stay.y;
	    foot_changed.angle = 0;
	    if (xx < 64+80) {
	        yy = min(544-80, 544-(64+80-xx));
	        xx = 64+48;
	        foot_changed.angle = -90;
	    }
	} else if (foot_stay.angle == 90) {
	    xx = foot_stay.x;
	    yy = foot_stay.y+dist;
	    foot_changed.angle = 90;
	    if (yy > 544-80) {
	        xx = min(736-80, 736-(yy-544+80));
	        yy = 544-48;
	        foot_changed.angle = 0;
	    }
	} else if (foot_stay.angle == 180) {
	    xx = foot_stay.x+dist;
	    yy = foot_stay.y;
	    foot_changed.angle = 180;
	    if (xx > 736-80) {
	        yy = max(64+80, 64+(xx-736+80));
	        xx = 736-48;
	        foot_changed.angle = 90;
	    }
	} else {
	    xx = foot_stay.x;
	    yy = foot_stay.y-dist;
	    foot_changed.angle = 270;
	    if (yy < 64+80) {
	        xx = max(64+80, 64+(64+80-yy));
	        yy = 64+48;
	        foot_changed.angle = 180;
	    }
	}

	}

	foot_changed.x_after = xx;
	foot_changed.y_after = yy;
	foot_changed.t = 0;

	if (abs(foot_changed.angle - foot_changed.image_angle) >= 100) foot_changed.angle_sp = 5;
	else foot_changed.angle_sp = 2.5;

	move_next = !move_next;
	if (move_fast) {
	    foot_changed.sp = 3 + 0.75*move_faster;
	    if (instance_exists(player)) {
			patt += 1; alarm[0] = 60 - 12*move_faster;
		} else {
			move_fast = false; foot_changed.sp = 2 + 0.75*move_faster;
			alarm[0] = 100 - 20*move_faster;
		}
	} else {
	    foot_changed.sp = 2 + 0.5*move_faster;
	    if (instance_exists(player)) patt += 1;
	    alarm[0] = 100 - 20*move_faster;
	}
    
	if (instance_exists(player)) {
		if (foot_changed == hp0) temp = (1-hp0/hpm0)*0.3;
		else temp = (1-hp1/hpm1)*0.3;
		if (random(1) >= 0.75+0.15*move_faster-0.45*move_fast-temp) { // Randomly wave
			foot_changed.sound_huge = 0.5;
			foot_changed.wave_time = 150-25*move_fast;
		}
		
	    if (!attack && !move_fast && patt >= floor(NUM/2-1-move_faster)) {
			attack = true;
			
			l = ds_list_create();
			ds_list_copy(l, type_list);
			// 0: knife, 1: Prince black, 2: blackhole, 3: Unwasa
			if (ds_list_size(l) == 0) {
				ds_list_add(l, 0); ds_list_add(l, 1); ds_list_add(l, 2); ds_list_add(l, 3);
				ds_list_copy(type_list, l);
				ds_list_delete_element(l, type_before);
			}
		    ds_list_shuffle(l);
			
	        temp = instance_create_depth(x-80*sin(degtorad(image_angle)), y-80*cos(degtorad(image_angle)), -8, Boss04_43);
	        temp.sid = id;
	        temp.oy = -80;
			temp._type = ds_list_find_value(l, 0);
			ds_list_delete_element(type_list, temp._type);
	        temp.angle_before = image_angle;
	        audio_play_sound(choose(snd04_35, snd04_36), 0, false);
			
			if (!black_appear && temp._type == 1) {
				black_appear = true;
				temp.black_appear = false;
			}
			if (!unwasa_appear && temp._type == 3) {
				unwasa_appear = true;
				temp.unwasa_appear = false;
			}
			type_before = temp._type;
			ds_list_destroy(l);
	    }

		if (patt == NUM) {
		    l = ds_list_create();
		    ds_list_add(l, 1); ds_list_add(l, 2);
		    ds_list_add(l, 3); ds_list_add(l, 4);
		    // 1: vjump, 2: change direction, 3: jump, 4: move fast
			ds_list_delete_element(l, num_before);
		    ds_list_shuffle(l);
		    num = ds_list_find_value(l, 0);
		    num_before = num;
    
		    temp = instance_create_depth(x, y, -2, Boss04_38);
			temp.sid = id;
		    temp.index = num;
    
		    ds_list_destroy(l);
		    alarm[0] = 100 - 20*move_faster + 20*blackhole;
		}
	}
} else if (patt == NUM) {
	attack = false;
	move_fast = false;
	foot_0.sp = 2 + 0.5*move_faster;
	foot_1.sp = 2 + 0.5*move_faster;
	back_effect.spd_after = 1;
	patt = 0;

	if (num == 1) {
	    temp = foot_0.x_after;
	    foot_0.x_after = 800-foot_1.x_after;
	    foot_1.x_after = 800-temp;
    
	    temp = foot_0.y_after;
	    foot_0.y_after = 608-foot_1.y_after;
	    foot_1.y_after = 608-temp;
    
	    foot_0.t = 0;
	    foot_1.t = 0;
    
	    temp = foot_0.angle;
	    foot_0.angle = ((foot_1.angle+180) mod 360);
	    foot_1.angle = ((temp+180) mod 360);
    
	    foot_0.sound_huge = 1;
	    foot_1.sound_huge = 2;
	    move_next = !move_next;
	    alarm[0] = 200 - 40*move_faster;
	} else if (num == 2) {
	    move_clockwise = !move_clockwise;
	    move_next = !move_next;
		t = 32;
		with(Boss04_40) {
			hspeed *= -1; vspeed *= -1;
			if (grav_dir == 0) {
				if (vspeed > 0) Boss04_36.t = min(32, Boss04_36.t, y-32);
				else Boss04_36.t = min(32, Boss04_36.t, 608-32-y);
			}
			x += hspeed; y += vspeed;
		}
	
		t_spd *= -1;
		back_effect.t_spd *= -1;
	    alarm[0] = 50-10*move_faster;
	} else if (num == 3) {
	    temp = foot_0.x_after;
	    foot_0.x_after = 1/3 * (foot_0.x_after) + 2/3 * (800-foot_1.x_after);
	    foot_1.x_after = 1/3 * (foot_1.x_after) + 2/3 * (800-temp);
    
	    temp = foot_0.y_after;
	    foot_0.y_after = 1/3 * (foot_0.y_after) + 2/3 * (608-foot_1.y_after);
	    foot_1.y_after = 1/3 * (foot_1.y_after) + 2/3 * (608-temp);
    
	    foot_0.t = 0;
	    foot_1.t = 0;
	    foot_0.bezier = false;
	    foot_1.bezier = false;
    
	    jumping = true;
	    patt = NUM+1;
	    alarm[0] = 30-6*move_faster;
	} else if (num == 4) {
	    move_fast = true;
		back_effect.spd_after = 2;
	    event_perform(ev_alarm, 0);
	}
} else {
	foot_0.sp = 2 + 0.5*move_faster;
	foot_1.sp = 2 + 0.5*move_faster;
	
	foot_0.x_after = foot_0.x_before;
	foot_0.x_before = foot_0.x;
	foot_1.x_after = foot_1.x_before;
	foot_1.x_before = foot_1.x;

	foot_0.y_after = foot_0.y_before;
	foot_0.y_before = foot_0.y;
	foot_1.y_after = foot_1.y_before;
	foot_1.y_before = foot_1.y;

	foot_0.t = 0;
	foot_1.t = 0;
	foot_0.bezier = true;
	foot_1.bezier = true;

	foot_0.sound_huge = 1;
	foot_1.sound_huge = 2;

	patt = 0;
	alarm[0] = 200-40*move_faster;
}