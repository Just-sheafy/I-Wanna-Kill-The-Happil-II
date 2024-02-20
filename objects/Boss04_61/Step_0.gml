var zx;

if (index == 0 && floor(((image_yscale == 1)? y:608-y)/32) > num && floor(((image_yscale == 1)? y:608-y)/32) <= 18) {
	audio_play_sound(sndBreak, 0, false);
	num = floor(((image_yscale == 1)? y:608-y)/32);
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
		audio_play_sound(snd04_34, 0, false);
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
				    Instance = audio_play_sound(curMusic, 10, true);
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
			vspeed = 5; gravity = 0.2;
			gravity_direction = 90;
		}
		with(Boss04F1b) {
			vspeed = -5; gravity = 0.2;
			gravity_direction = 270;
		}
	}
}