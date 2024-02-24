var zx;

if (index == 0 && floor(((image_yscale == 1)? y:608-y)/32) > NUM && floor(((image_yscale == 1)? y:608-y)/32) <= 18) {
	audio_play_sound(sndBreak, 0, false, world.sound_vol);
	NUM = floor(((image_yscale == 1)? y:608-y)/32);
}

if (jump && index == 0) {
	alpha = max(0, alpha-0.02);
	if (layer_exists("Background")) {
		layer_background_alpha(layer_background_get_id(layer_get_id("Background")), alpha);
	}
}

if (((image_yscale > 0 && y >= 576) || (image_yscale < 0 && y <= 32)) && !jump) {
	y -= vspeed;
	vspeed *= -2/3;
	jump = true;
	
	zx = instance_create_depth(x, y, -50, surf_ripple);
	zx.radius_max = 400;
	
	if (index == 0) {
		audio_play_sound(snd04_34, 0, false, world.sound_vol);
		if (instance_exists(player)) {
			with(player) {
				instance_destroy();
				var temp = instance_create_depth(x, y, -2, Boss02_60);
			    temp.direction = point_direction(400, (Boss04_60.image_yscale == 1)? -32 : room_height+32, x, y);
			    temp.speed = 8;
			}
			
			with(Boss04F1) { not_check = true; alarm[1] = 160; }
			with(Boss04F1b) { not_check = true; alarm[3] = 160; }
			with(world) {
				if filePlaying != 22 and curMusic != global.stage04Bs3 {
					audio_stop_channel(0);
				    filePlaying = 22;
				    curMusic = global.stage04Bs3;
				    Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
				}
			}
		}
		
		with(block) {
			instance_destroy();
			var zx = instance_create_depth(x, y, -2, Hamjung03Bs7);
			zx.sprite_index = sprite_index;
			zx.image_index = image_index;
			zx.speed = 10; zx.direction = point_direction(400, 304, x+16, y+16);
			zx.x_offset = 16; zx.y_offset = 16;
		}
		
		with(Boss04F1) {
			var i, num, num2, r1, r2, r3, r4, temp;
			
			visible = false;
			for(i=0; i<2000; i+=1) {
			    num = irandom_range(1, 46 + 98 + 14 + 36 + 35 + 52 + 34 + 41);
			    temp = instance_create_depth(x-sprite_get_xoffset(sprite_index), y-sprite_get_yoffset(sprite_index), -3, Boss04_33);
			    if (num <= 46) {
			        r1 = 52 * sqrt(random(1));
			        r2 = 360 * random(1);
			        temp.x += 94 + lengthdir_x(r1, r2);
			        temp.y += 111 - lengthdir_y(r1, r2);
			    } else {
			        if (num <= 46 + 98 + 14 + 36 + 35 + 52) {
			            r1 = random(1);
			            r2 = random(1);
			            r3 = random(1);
			            if (r1 + r2 > 1) { r1 = 1-r1; r2 = 1-r2; }
			            if (r2 + r3 > 1) { num2 = r3; r3 = 1-r1-r2; r2 = 1-num2; }
			            else if (r1 + r2 + r3 > 1) { num2 = r3; r3 = r1+r2+r3-1; r1 = 1-r2-num2; }
			        } else {
			            r1 = random(1);
			            r2 = random(1);
			            r3 = random(1);
			            r4 = random(1);
			            if (r1 + r2 > 1) { r1 = 1-r1; r2 = 1-r2; }
			            if (r2 + r3 > 1) { num2 = r3; r3 = 1-r1-r2; r2 = 1-num2; }
			            else if (r1 + r2 + r3 > 1) { num2 = r3; r3 = r1+r2+r3-1; r1 = 1-r2-num2; }
			            if (r3 + r4 > 1) { num2 = r4; r4 = 1-r1-r2-r3; r3 = 1-num2; }
			            else if (r2 + r3 + r4 > 1) { num2 = r4; r4 = r2+r3+r4-1; r2 = 1-r3-num2; }
			            else if (r1 + r2 + r3 + r4 > 1) { r4 = r1+r2+r3+r4-1; r1 = 1-r1-r2-r3; }
			        }
        
			        if (num <= 46 + 98) {
			            temp.x += 72 * r1 + 56 * r2 + 111 * r3 + 114 * (1-r1-r2-r3);
			            temp.y += 157 * r1 + 253 * r2 + 251 * r3 + 159 * (1-r1-r2-r3);
			        } else if (num <= 46 + 98 + 14) {
			            temp.x += 65 * r1 + 15 * r2 + 29 * r3 + 56 * (1-r1-r2-r3);
			            temp.y += 201 * r1 + 314 * r2 + 324 * r3 + 253 * (1-r1-r2-r3);
			        } else if (num <= 46 + 98 + 14 + 36) {
			            temp.x += 114 * r1 + 133 * r2 + 164 * r3 + 124 * (1-r1-r2-r3);
			            temp.y += 159 * r1 + 327 * r2 + 325 * r3 + 153 * (1-r1-r2-r3);
			        } else if (num <= 46 + 98 + 14 + 36 + 35) {
			            temp.x += 13 * r1 + 95 * r2 + 98 * r3 + 44 * (1-r1-r2-r3);
			            temp.y += 361 * r1 + 458 * r2 + 398 * r3 + 354 * (1-r1-r2-r3);
			        } else if (num <= 46 + 98 + 14 + 36 + 35 + 52) {
			            temp.x += 98 * r1 + 94 * r2 + 142 * r3 + 120 * (1-r1-r2-r3);
			            temp.y += 384 * r1 + 540 * r2 + 521 * r3 + 385 * (1-r1-r2-r3);
			        } else if (num <= 46 + 98 + 14 + 36 + 35 + 52 + 34) {
			            temp.x += 56 * r1 + 13 * r2 + 44 * r3 + 78 * r4 + 78 * (1-r1-r2-r3-r4);
			            temp.y += 253 * r1 + 361 * r2 + 354 * r3 + 295 * r4 + 252 * (1-r1-r2-r3-r4);
			        } else {
			            temp.x += 78 * r1 + 78 * r2 + 98 * r3 + 120 * r4 + 111 * (1-r1-r2-r3-r4);
			            temp.y += 252 * r1 + 295 * r2 + 384 * r3 + 385 * r4 + 251 * (1-r1-r2-r3-r4);
			        }
			    }
				temp.y = 2*y - temp.y;
			}
			
			with(Boss04_33) {
				direction = point_direction(Boss04_60.x, Boss04_60.y, x, y);
				speed = point_distance(Boss04_60.x, Boss04_60.y, x, y) / 150;
				gravity_direction = 90;
			}
			
			// vspeed = 5; gravity = 0.2;
			// gravity_direction = 90;
		}
		with(Boss04F1b) {
			var i, num, num2, r1, r2, r3, r4, temp;
			
			visible = false;
			for(i=0; i<2000; i+=1) {
			    num = irandom_range(1, 41 + 38 + 22 + 29 + 20 + 22 + 28 + 43 + 29);
			    temp = instance_create_depth(x-sprite_get_xoffset(sprite_index), y-sprite_get_yoffset(sprite_index), -3, Boss04_33);
			    if (num <= 41) {
			        r1 = 36 * sqrt(random(1));
			        r2 = random(360);
			        temp.x += 154 + lengthdir_x(r1, r2);
			        temp.y += 51 - lengthdir_y(r1, r2);
			    } else {
			        if (num <= 41 + 38 + 22 + 29 + 20 + 22) {
			            r1 = random(1);
			            r2 = random(1);
			            r3 = random(1);
			            if (r1 + r2 > 1) { r1 = 1-r1; r2 = 1-r2; }
			            if (r2 + r3 > 1) { num2 = r3; r3 = 1-r1-r2; r2 = 1-num2; }
			            else if (r1 + r2 + r3 > 1) { num2 = r3; r3 = r1+r2+r3-1; r1 = 1-r2-num2; }
			        } else {
			            r1 = random(1);
			            r2 = random(1);
			            r3 = random(1);
			            r4 = random(1);
			            if (r1 + r2 > 1) { r1 = 1-r1; r2 = 1-r2; }
			            if (r2 + r3 > 1) { num2 = r3; r3 = 1-r1-r2; r2 = 1-num2; }
			            else if (r1 + r2 + r3 > 1) { num2 = r3; r3 = r1+r2+r3-1; r1 = 1-r2-num2; }
			            if (r3 + r4 > 1) { num2 = r4; r4 = 1-r1-r2-r3; r3 = 1-num2; }
			            else if (r2 + r3 + r4 > 1) { num2 = r4; r4 = r2+r3+r4-1; r2 = 1-r3-num2; }
			            else if (r1 + r2 + r3 + r4 > 1) { r4 = r1+r2+r3+r4-1; r1 = 1-r1-r2-r3; }
			        }
        
			        if (num <= 41 + 38) {
			            temp.x += 109 * r1 + 85 * r2 + 159 * r3 + 151 * (1-r1-r2-r3);
			            temp.y += 167 * r1 + 229 * r2 + 237 * r3 + 170 * (1-r1-r2-r3);
			        } else if (num <= 41 + 38 + 22) {
			            temp.x += 122 * r1 + 60 * r2 + 75 * r3 + 136 * (1-r1-r2-r3);
			            temp.y += 105 * r1 + 249 * r2 + 253 * r3 + 102 * (1-r1-r2-r3);
			        } else if (num <= 41 + 38 + 22 + 29) {
			            temp.x += 129 * r1 + 159 * r2 + 182 * r3 + 159 * (1-r1-r2-r3);
			            temp.y += 234 * r1 + 346 * r2 + 343 * r3 + 237 * (1-r1-r2-r3);
			        } else if (num <= 41 + 38 + 22 + 29 + 20) {
			            temp.x += 75 * r1 + 65 * r2 + 84 * r3 + 95 * (1-r1-r2-r3);
			            temp.y += 337 * r1 + 441 * r2 + 439 * r3 + 342 * (1-r1-r2-r3);
			        } else if (num <= 41 + 38 + 22 + 29 + 20 + 22) {
			            temp.x += 159 * r1 + 196 * r2 + 217 * r3 + 182 * (1-r1-r2-r3);
			            temp.y += 346 * r1 + 443 * r2 + 442 * r3 + 343 * (1-r1-r2-r3);
			        } else if (num <= 41 + 38 + 22 + 29 + 20 + 22 + 28) {
			            temp.x += 151 * r1 + 136 * r2 + 109 * r3 + 151 * r4 + 171 * (1-r1-r2-r3-r4);
			            temp.y += 88 * r1 + 102 * r2 + 167 * r3 + 170 * r4 + 83 * (1-r1-r2-r3-r4);
			        } else if (num <= 41 + 38 + 22 + 29 + 20 + 22 + 28 + 43) {
			            temp.x += 171 * r1 + 165 * r2 + 173 * r3 + 203 * r4 + 186 * (1-r1-r2-r3-r4);
			            temp.y += 83 * r1 + 110 * r2 + 261 * r3 + 256 * r4 + 98 * (1-r1-r2-r3-r4);
			        } else {
			            temp.x += 85 * r1 + 75 * r2 + 75 * r3 + 95 * r4 + 110 * (1-r1-r2-r3-r4);
			            temp.y += 229 * r1 + 253 * r2 + 337 * r3 + 342 * r4 + 232 * (1-r1-r2-r3-r4);
			        }
			    }
			}
			
			with(Boss04_33) {
				direction = point_direction(Boss04_60.x, Boss04_60.y, x, y);
				speed = point_distance(Boss04_60.x, Boss04_60.y, x, y) / 150;
				gravity_direction = 270;
			}
			
			// vspeed = -5; gravity = 0.2;
			// gravity_direction = 270;
		}
	}
}