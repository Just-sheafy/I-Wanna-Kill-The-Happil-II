var i, dir, xx1, yy1, xx2, yy2;

alpha = min(1, alpha + 0.02);

key_time = max(0, key_time - 1);
key_scale = max(1, key_scale - 0.05);
attack_scale = max(1, attack_scale - 0.05);
defence_scale = max(1, defence_scale - 0.05);
t_spd_scale = max(1, t_spd_scale - 0.05);

if (key_time <= 0) {
	var num = 0;
	num += keyboard_check(world.leftKey);
	num += keyboard_check(world.rightKey);
	num += keyboard_check(world.upKey);
	num += keyboard_check(world.downKey);
	num += keyboard_check(world.jumpKey);
	num += keyboard_check(world.shootKey);
	num += keyboard_check(world.skipKey);
	num += keyboard_check(world.gameRestart);
	
	if (num >= key_restricted) {
		key_time = 200;
		audio_play_sound(snd04_44, 0, false, world.sound_vol);
		audio_play_sound(snd04_45, 0, false, world.sound_vol);
		
		if (world.items[3]) instance_create_depth(400, room_height + 300, -50, Boss04_58);
		
		key_scale = 2;
		defence_scale = 2;
		t_spd_scale = 2;
		
		if (attack < 8) {
			attack_scale = 2;
			attack = min(8, attack*2);
			t_spd += 1;
		} else t_spd *= 2;
		defence += 5;
		objEndCredit.t_spd = t_spd;
	}
}


// 3D movement
var TIME, xxx, yyy, __alpha;

if (mode == 1) {
    xx += (xx_to - xx)/10;
    yy += (yy_to - yy)/10;
    zz += (zz_to - zz)/8;
    
    xxx = xx - room_width/2 + lengthdir_x(_r, _theta);
    yyy = yy - room_height/2 - lengthdir_y(_r, _theta);
    ixx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    iyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    izz = 100;
    
    xxx = xx - room_width/2 + lengthdir_x(12*_r, _theta);
    yyy = yy - room_height/2 - lengthdir_y(12*_r, _theta);
    txx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    tyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    tzz = 115;
} else if (mode == 2) {
    TIME = 30;
    
    mode_time = min(mode_time+acc, TIME);
    __alpha = (3*TIME*power(mode_time,2) - 2*power(mode_time,3))/power(TIME, 3);
    _r = sprite_get_height(sprite_index)*image_xscale*2/3 * (1-mode_time/TIME*2.5);
    
    hp_var._alpha = min(mode_time/TIME*2, 1);
    
    xx = (1-__alpha)*xx_from + __alpha*xx_to;
    yy = (1-__alpha)*yy_from + __alpha*yy_to;
    zz = (1-__alpha)*zz_from + __alpha*zz_to;
    
    xxx = xx - room_width/2 + lengthdir_x(_r, _theta);
    yyy = yy - room_height/2 - lengthdir_y(_r, _theta);
    ixx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    iyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    izz = zz-110 + 140*mode_time/TIME;
    
    xxx = xx - room_width/2 + lengthdir_x(24*_r, _theta);
    yyy = yy - room_height/2 - lengthdir_y(24*_r, _theta);
    txx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    tyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    tzz = zz-125 + 125*mode_time/TIME;
} else if (mode == 3) {
    TIME = 50;
    
    mode_time_v = acc*min(mode_time_v + 0.05, 1);
    mode_time = min(mode_time+mode_time_v, TIME);
    __alpha = (3*TIME*power(mode_time,2) - 2*power(mode_time,3))/power(TIME, 3);
    
    xx = (1-__alpha)*xx_from + __alpha*xx_to;
    yy = (1-__alpha)*yy_from + __alpha*yy_to;
    zz = (1-__alpha)*zz_from + __alpha*zz_to;
    
    hp_var._alpha = __alpha*2/3;
    
    xxx = xx - room_width/2 + lengthdir_x(_r, _theta);
    yyy = yy - room_height/2 - lengthdir_y(_r, _theta);
    ixx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    iyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    izz = 100;
    
    xxx = xx - room_width/2 + lengthdir_x(12*_r, _theta);
    yyy = yy - room_height/2 - lengthdir_y(12*_r, _theta);
    txx = room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    tyy = room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125);
    tzz = 115;
} else if (mode == 4) { // 3D rush
	with(Boss04_56) {
		t_spd = min(t_spd+0.1, 5);
		t2_spd = min(t2_spd+0.1, 5);
		number = min(number+1, 100);
	}
	
	CX += (room_width/2-CX)/50;
	CY += (room_height/2-CY)/50;
	
	if (patt <= 3) {
		if (instance_exists(player)) {
			if (rush >= 2 and patt <= 2) {
				xx += (player.x-xx)/30;
				yy += (player.y-yy)/30;
			} else if (rush >= 2) {
				xx += (player.x-xx)/85;
				yy += (player.y-yy)/85;
			
		        if (xx > player.x+10) xx -= 0.5;
		        if (xx < player.x-10) xx += 0.5;
		        if (yy > player.y+10) yy -= 0.5;
		        if (yy < player.y-10) yy += 0.5;
			} else {
		        if (xx > player.x+10) xx -= 1;
		        if (xx < player.x-10) xx += 1;
		        if (yy > player.y+10) yy -= 1;
		        if (yy < player.y-10) yy += 1;
			}
		} else {
			if (rush >= 2 and patt <= 2) {
				xx += -xx/30;
				yy += -yy/30;
			} else if (rush >= 2) {
				xx += -xx/80;
				yy += -yy/80;
			
		        if (xx > 10) xx -= 0.75;
		        if (xx < -10) xx += 0.75;
		        if (yy > 10) yy -= 0.75;
		        if (yy < -10) yy += 0.75;
			} else {
		        if (xx > 10) xx -= 1;
		        if (xx < -10) xx += 1;
		        if (yy > 10) yy -= 1;
		        if (yy < -10) yy += 1;
			}
		}
    }
    
    zz_speed += zz_gravity;
    zz += zz_speed;
    if (zz < -120) zz = -120;
    
    if (patt == 4) {
		dir = point_direction(room_width/2, room_height/2, xx, yy);
		xx += lengthdir_x(16, dir);
		yy += lengthdir_y(16, dir);
    }
    if (patt == 2 or patt == 3 or patt == 4) image_angle += 8*zz_speed;
} else if (mode == 5) {
	with(Boss04_56) {
		t_spd = max(t_spd-0.1, 1);
		t2_spd = max(t2_spd-0.1, 1);
		number = max(number-0.5, 4);
	}
	
	if (mode_time >= 0) {
		mode_time = max(mode_time-1, 0);
		yy = 304 + 500*power(mode_time/50, 3);
	}
} else if (mode == 6) {
	with(Boss04_56) {
		t_spd = max(t_spd-0.1, 1);
		t2_spd = max(t2_spd-0.1, 1);
		number = max(number-0.5, 4);
	}
	
	mode_time += mode_time_v;
	mode_time_v = min(mode_time_v+0.02, 1);
	yy = 304 - 264*sin(degtorad(mode_time*360/200));
} else if (mode == 7) {
	if (image_index != 0) {
		with(Boss04_56) {
			t_spd = min(t_spd+0.1, 5);
			t2_spd = min(t2_spd+0.1, 5);
			number = min(number+1, 100);
		}
	} else if (!instance_exists(Boss04_72)) {
		with(Boss04_56) {
			t2_spd = min(t2_spd+0.04, 3);
			number = min(number+0.08, 8);
		}
	}
	
	mode_time += 1;
	yy = max(yy-5.8-mode_time*0.1, -200);
} else if (mode == 8) {
	if (image_index != 0) {
		with(Boss04_56) {
			t_spd = min(t_spd+0.1, 5);
			t2_spd = min(t2_spd+0.1, 5);
			number = min(number+1, 100);
		}
	}
	
	mode_time += 1;
	yy = 160 - 360*power(abs(1-mode_time/135), 3);
} else if (mode == 9) {
	mode_time = min(mode_time+1, 800);
	zz = 20*(1-mode_time/800);
	scale = 4 + 1.5*mode_time/800;
	
	// natural walking
	t1 = min(t1+1, t1_max);
	t2 = min(t2+1, t2_max);
	
	if (t1 >= t1_max) {
		xx1_from = xx1_to;
	    yy1_from = yy1_to;
	    xx1_to = random_range(CX-400-64, CX-400+64);
	    yy1_to = random_range(CY-64, CY+64);
	    t1 = 0;
	    t1_max = floor(random_range(150, 200)-100*(1-mode_time/800));
	}
	
	if (t2 >= t2_max) {
	    xx2_from = xx2_to;
	    yy2_from = yy2_to;
	    xx2_to = random_range(CX+400-64, CX+400+64);
	    yy2_to = random_range(CY-64, CY+64);
	    t2 = 0;
	    t2_max = floor(random_range(150, 200)-100*(1-mode_time/800));
	}
	
	xx1 = xx1_from + (xx1_to-xx1_from)*(1+sin(degtorad(t1/t1_max*180-90)))/2;
	yy1 = yy1_from + (yy1_to-yy1_from)*(1+sin(degtorad(t1/t1_max*180-90)))/2;
	xx2 = xx2_from + (xx2_to-xx2_from)*(1+sin(degtorad(t2/t2_max*180-90)))/2;
	yy2 = yy2_from + (yy2_to-yy2_from)*(1+sin(degtorad(t2/t2_max*180-90)))/2;

	xx = (xx1+xx2)/2;
	yy = (yy1+yy2)/2;
	image_angle = point_direction(xx1, yy1, xx2, yy2);
	
	// shaders
	_resol[0] = max(room_width/2, _resol[0]-5);
	_resol[1] = max(room_height/2, _resol[1]-3.8);
	
	_t += _spd*(_t_spd + sign(_t_spd)*_t_spd_extra) / room_speed;
	_rot = clamp(_rot+(_t_spd + sign(_t_spd)*_t_spd_extra) / room_speed, -1, 1);
	if (_spd < _spd_after) _spd += 0.05;
	else if (_spd > _spd_after) _spd -= 0.05;
	
	for(i=0; i<3; i+=1) {
		_col[i] += (_col_after[i] - _col[i]) / 15;
	}
} else if (mode == 10) {
	with(Boss04_56) {
		t_spd = max(t_spd-4/50, 1);
		t2_spd = max(t2_spd-4/50, 1);
		number = max(number-2, 2);
		
		col[0] = min(col[0]+(0.52-0.27)/50, 0.52);
		col[1] = max(col[1]+(0.2-0.27)/50, 0.2);
		col[2] = max(col[2]+(0.1-0.27)/50, 0.1);
		col2[0] = max(col2[0]+(0.0-0.37)/50, 0.0);
		col2[1] = max(col2[1]+(0.2-0.37)/50, 0.2);
		col2[2] = min(col2[2]+(0.9-0.37)/50, 0.9);
		col3[0] = max(col3[0]+(0.2-0.52)/50, 0.2);
		col3[1] = min(col3[1]+(0.9-0.52)/50, 0.9);
		col3[2] = max(col3[2]+(0.45-0.52)/50, 0.45);
	}
	
	mode_time = min(mode_time+1, 50);
	xx += (CX-xx)/30;
	yy += (CY-yy)/30;
	zz = 100*sin(degtorad(mode_time/50*90));
	scale = 5.5-1.5*sin(degtorad(mode_time/50*90));
	image_angle -= min(image_angle, 360-image_angle)/30;
}

x = xx;
y = yy;
depth = floor(zz/2);