var xx, yy, zx, temp, val, i, len, dir;

if (patt == 0 and sid != -1 and instance_exists(sid)) {
    if (_type == 0) {
	    for(i=0; i<num; i+=1) {
	        bl[i].ox = random(152);
	        val = bl[i].ox;
	        if (val < 46) {
	            bl[i].oy = random_range(-15, 15);
	        } else if (val > 146) {
	            bl[i].oy = random_range(lerp(-52, -19, get_ratio(val, 62, 152)), -19);
	        } else if (choose(0, 1)) {
	            if (val < 62) {
	                bl[i].oy = random_range(lerp(-15, -52, get_ratio(val, 46, 62)),
	                    lerp(3, -19, get_ratio(val, 46, 75)));
	            } else if (val < 75) {
	                bl[i].oy = random_range(lerp(-52, -19, get_ratio(val, 62, 152)),
	                    lerp(3, -19, get_ratio(val, 46, 75)));
	            } else bl[i].oy = random_range(lerp(-52, -19, get_ratio(val, 62, 152)), -19);
	        } else {
	            if (val < 56) {
	                bl[i].oy = random_range(lerp(3, 52, get_ratio(val, 46, 56)),
	                    lerp(3, 34, get_ratio(val, 46, 86)));
	            } else if (val < 86) {
	                bl[i].oy = random_range(lerp(52, 45, get_ratio(val, 56, 146)),
	                    lerp(3, 34, get_ratio(val, 46, 86)));
	            } else bl[i].oy = random_range(lerp(52, 45, get_ratio(val, 56, 146)),
	                lerp(34, 45, get_ratio(val, 86, 146)));
	        }
	        bl[i].ox *= 2;
	        bl[i].oy *= 2;
            
	        len = point_distance(0, 0, bl[i].ox, bl[i].oy);
	        dir = point_direction(0, 0, bl[i].ox, bl[i].oy);
	        bl[i].ox = x + lengthdir_x(len, dir+sid.image_angle-90);
	        bl[i].oy = y + lengthdir_y(len, dir+sid.image_angle-90);
	    }
	} else if (_type == 1) {
		xx = x + lengthdir_x(108, sid.image_angle+90);
	    yy = y + lengthdir_y(108, sid.image_angle+90);
    
	    for(i=0; i<num; i+=1) {
	        val = irandom_range(1, 10);
	        if (val <= 5) {
	            dir = random(360);
	            bl[i].ox = lengthdir_x(57, dir);
	            bl[i].oy = lengthdir_y(57, dir);
	        } else if (val == 6) {
	            val = random(1);
	            bl[i].ox = val*(-10) + (1-val)*14 + random_range(-2, 2);
	            bl[i].oy = val*21 + (1-val)*20 + random_range(-2, 2);
	        } else if (val == 7) {
	            val = random(1);
	            bl[i].ox = val*(-10) + (1-val)*5 + random_range(-2, 2);
	            bl[i].oy = val*21 + (1-val)*45 + random_range(-2, 2);
	        } else if (val == 8) {
	            val = random(1);
	            bl[i].ox = val*14 + (1-val)*5 + random_range(-2, 2);
	            bl[i].oy = val*20 + (1-val)*45 + random_range(-2, 2);
	        } else if (val == 9) {
	            bl[i].ox = -19 + random_range(-2, 2);
	            bl[i].oy = 7 + random_range(-3, 3);
	        } else if (val == 10) {
	            bl[i].ox = 20 + random_range(-2, 2);
	            bl[i].oy = 4 + random_range(-3, 3);
	        }
            
	        len = point_distance(0, 0, bl[i].ox, bl[i].oy);
	        dir = point_direction(0, 0, bl[i].ox, bl[i].oy);
	        bl[i].ox = xx + lengthdir_x(len, dir+sid.image_angle);
	        bl[i].oy = yy + lengthdir_y(len, dir+sid.image_angle);
	    }
	} else if (_type == 2) {
	    for(i=0; i<num; i+=1) {
	        if (choose(0, 1)) {
		        dir = irandom(15)*360/15;
		        len = random_range(25, 100);
				bl[i].ox = lengthdir_x(len, dir - len);
				bl[i].oy = lengthdir_y(len, dir - len);
		    } else {
		        dir = random(360);
		        len = random(25);
				bl[i].ox = lengthdir_x(len, dir);
				bl[i].oy = lengthdir_y(len, dir);
		    }
            
	        len = point_distance(0, 0, bl[i].ox, bl[i].oy);
	        dir = point_direction(0, 0, bl[i].ox, bl[i].oy);
	        bl[i].ox = sid.x + lengthdir_x(len, dir+sid.image_angle-90);
	        bl[i].oy = sid.y + lengthdir_y(len, dir+sid.image_angle-90);
	    }
	} else if (_type == 3) {
    
    for(i=0; i<num; i+=1) {
        val = irandom_range(1, 32);
        if (val == 1) { // left eye 1
            val = random(1);
            bl[i].ox = val*(-16) + (1-val)*(-9) + random_range(-1, 1);
            bl[i].oy = val*(-16) + (1-val)*(-9) + random_range(-1, 1);
        } else if (val == 2) { // left eye 2
            val = random(1);
            bl[i].ox = val*(-9) + (1-val)*(-2) + random_range(-1, 1);
            bl[i].oy = val*(-9) + (1-val)*(-16) + random_range(-1, 1);
        } else if (val <= 4) { // mouth
            dir = random_range(90, 270);
            bl[i].ox = lengthdir_x(10, dir) + random_range(-1, 1);
            bl[i].oy = -2 + lengthdir_y(10, dir) + random_range(-1, 1);
        } else if (val <= 8) { // left leg
            val = random(1);
            bl[i].ox = -7 + random_range(-4, 4);
            bl[i].oy = val*12 + (1-val)*28 + random_range(-2, 2);
        } else if (val <= 10) { // left arm 1
            val = random(1);
            bl[i].ox = val*(-36) + (1-val)*(-32) + random_range(-2, 2);
            bl[i].oy = -8 + random_range(-4, 4);
        } else if (val <= 16) { // left arm 2
            val = random(1);
            bl[i].ox = -32 + random_range(-4, 4);
            bl[i].oy = val*(-8) + (1-val)*8 + random_range(-2, 2);
        } else { // left shoulder
            val = random(1);
            bl[i].ox = -32 + random_range(-8, 8);
            bl[i].oy = val*(-8) + (1-val)*8 + random_range(-4, 4);
        }
            
        if (choose(0, 1)) bl[i].ox *= -1;
            
        bl[i].ox *= 1.5;
        bl[i].oy *= 1.5;
        bl[i].ox += room_width/2;
        bl[i].oy += room_height/2;
    }
    
    }
    
    patt += 1;
    alarm[0] = 1;
} else if (patt == 1) {
    patt += 1;
    alarm[0] = 84;
} else if (patt == 2) {
	if (_type == 0) {
	    knife_id = instance_create_depth(x, y, -3, Boss04_44);
	    knife_id.sid = sid;
	    knife_id.ox = ox;
	    knife_id.oy = oy;
	    knife_id.image_angle = sid.image_angle + 45;
	    knife_id.angle = 45;
	    knife_id.angle_before = 45;
	    audio_play_sound(snd04_3, 0, false, world.sound_vol);
	} else if (_type == 1) {
		knife_id = instance_create_depth(x + lengthdir_x(108, sid.image_angle+90), y + lengthdir_y(108, sid.image_angle+90), -1, Boss04_46);
        knife_id.sid = sid;
        knife_id.ox = 0;
        knife_id.oy = -188;
        knife_id.image_angle = sid.image_angle;
	    audio_play_sound(snd04_3, 0, false, world.sound_vol);
		
		sid.alarm[0] = 225;
		if (!black_appear) {
			zx = instance_create_depth(knife_id.x, knife_id.y, -10, Boss04_n);
			zx.sid = knife_id;
			zx.image_index = 8;
		}
        
        xx = x + lengthdir_x(108, sid.image_angle+90);
        yy = y + lengthdir_y(108, sid.image_angle+90);
        
        for(i=0; i<num; i+=1) {
            bl[i].move_to = false;
            bl[i]._spd = point_distance(xx, yy, bl[i]._x, bl[i]._y) / 40;
            bl[i]._dir = point_direction(xx, yy, bl[i]._x, bl[i]._y);
        }
	} else if (_type == 2) {
		knife_id = instance_create_depth(sid.x, sid.y, 0, Boss04_49);
        knife_id.sid = sid;
		sid.blackhole = true;
		with(surf_lens) but_recover = false;
		var zx = instance_create_depth(0, 0, 0, view_an1);
		zx.asdf = 350;
		if (sid.move_faster) {
			knife_id.alarm[0] = 300;
			zx.asdf -= 50;
		}
	    audio_play_sound(snd04_23, 0, false, world.sound_vol);
        
        for(i=0; i<num; i+=1) {
            bl[i].move_to = false;
            bl[i]._spd = point_distance(sid.x, sid.y, bl[i]._x, bl[i]._y) / 40;
            bl[i]._dir = point_direction(sid.x, sid.y, bl[i]._x, bl[i]._y);
        }
	} else if (_type == 3) {
        knife_id = instance_create_depth(room_width/2, room_height/2, -3, Boss04_48);
        knife_id.move_clockwise = !sid.move_clockwise;
        knife_id.gravity = 0.3;
        val = sid.image_angle;
        while(val < 0) val += 360;
        while(val >= 360) val -= 360;
        if (val >= 315 or val < 45) {
            knife_id.image_angle = 0;
            knife_id.vspeed = -6;
            knife_id.gravity_direction = 270;
        } else if (val < 135) {
            knife_id.image_angle = 90;
            knife_id.hspeed = -6;
            knife_id.gravity_direction = 0;
        } else if (val < 225) {
            knife_id.image_angle = 180;
            knife_id.vspeed = 6;
            knife_id.gravity_direction = 90;
        } else {
            knife_id.image_angle = 270;
            knife_id.hspeed = 6;
            knife_id.gravity_direction = 180;
        }
        audio_play_sound(snd04_3, 0, false, world.sound_vol);
        audio_play_sound(snd04_39, 0, false, world.sound_vol);
		
		if (instance_exists(player)) {
			temp = instance_create_depth(room_width/2, room_height/2, -50, surf_ripple);
			temp.radius_max = 200;
		}
		
		if (!unwasa_appear) {
			zx = instance_create_depth(knife_id.x, knife_id.y, -10, Boss04_n);
			zx.sid = knife_id;
			zx.image_index = 9;
		}
        
        for(i=0; i<num; i+=1) {
            bl[i].move_to = false;
            bl[i]._spd = point_distance(room_width/2, room_height/2, bl[i]._x, bl[i]._y) / 30;
            bl[i]._dir = point_direction(room_width/2, room_height/2, bl[i]._x, bl[i]._y);
        }
    }
    
    patt += 1;
    alarm[0] = 15;
} else if (patt == 3) {
	if (_type == 0) {
	    for(i=0; i<num; i+=1) {
	        bl[i].move_to = false;
	        bl[i]._spd = point_distance(x, y, bl[i]._x, bl[i]._y) / 30;
	        bl[i]._dir = point_direction(x, y, bl[i]._x, bl[i]._y);
	    }
    
	    with(knife_id) {
	        enable = true;
	        clockwise = !Boss04_36.move_clockwise;
	    }
	}
    
    patt += 1;
    alarm[0] = 20;
} else {
    instance_destroy();
}