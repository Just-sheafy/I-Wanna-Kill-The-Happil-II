var i, dir;

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
	CX += (room_width/2-CX)/50;
	CY += (room_height/2-CY)/50;
	
	if (patt <= 3) {
		if (instance_exists(player)) {
			if (rush >= 2 and patt <= 2) {
				xx += (player.x-xx)/30;
				yy += (player.y-yy)/30;
			} else if (rush >= 2) {
				xx += (player.x-xx)/80;
				yy += (player.y-yy)/80;
			
		        if (xx > player.x+10) xx -= 0.75;
		        if (xx < player.x-10) xx += 0.75;
		        if (yy > player.y+10) yy -= 0.75;
		        if (yy < player.y-10) yy += 0.75;
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
	if (mode_time >= 0) {
		mode_time = max(mode_time-1, 0);
		yy = 304 + 1.4*power(mode_time, 1.5);
	}
} else if (mode == 6) {
	mode_time += mode_time_v;
	mode_time_v = min(mode_time_v+0.02, 1);
	yy = 304 - 264*sin(degtorad(mode_time*360/200));
}

x = xx;
y = yy;
depth = floor(zz/2);


/*
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