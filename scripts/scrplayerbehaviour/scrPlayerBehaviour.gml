function player_jump() {
	if noGravity {exit;}
	if (GravityH) {
		if (jump_total > 0 && (on_block || on_platform || place_meeting(x + (2*Gravity-1), y, platform_parent)
			|| place_meeting(x + (2*Gravity-1), y, Boss04_55))) {
			is_riding = false;
			with(Boss04_55) { is_riding = false; ride_available = 5; }
            with(Hamjung02K1) {b = !b;}
            with(Hamjung02K2) {b = !b;}
			
			if instance_exists(VJumping) {player_vjump(); exit;}
			hspd = -(jump_height[0] * (2*Gravity-1));
			
			sprite_index = sprPlayerJump;
			reset_jumps();
			audio_play_sound(sndJump, 0 ,false);
		} else if (jump_left > 0 || place_meeting(x + (2*Gravity-1), y, water) || jump_total == -1) {
			if instance_exists(VJumping) exit;
            with(Hamjung02K1) {b = !b;}
			
			hspd = -(jump_height[1] * (2*Gravity-1));
			sprite_index = sprPlayerJump;
			
			if (!place_meeting(x + (2*Gravity-1), y, water2)) {
				if (!world.IJ && jump_left > 0) {
					jump_left--;
				}
			} else {
				reset_jumps();
			}
			
			audio_play_sound(sndDJump, 0 ,false);
		}
	} else {
		if (jump_total > 0 && (on_block || on_platform || place_meeting(x, y + (2*Gravity-1), platform_parent)
			|| place_meeting(x, y + (2*Gravity-1), Boss04_55))) {
			is_riding = false;
			with(Boss04_55) { is_riding = false; ride_available = 5; }
            with(Hamjung02K1) {b = !b;}
            with(Hamjung02K2) {b = !b;}
			
			if instance_exists(VJumping) {player_vjump(); exit;}
			vspd = -(jump_height[0] * (2*Gravity-1));
			sprite_index = sprPlayerJump;
			reset_jumps();
			audio_play_sound(sndJump, 0 ,false);
		} else if (jump_left > 0 || place_meeting(x, y + (2*Gravity-1), water) || jump_total == -1) {
			if instance_exists(VJumping) exit;
            with(Hamjung02K1) {b = !b;}
			
			vspd = -(jump_height[1] * (2*Gravity-1));
			sprite_index = sprPlayerJump;
			
			if (!place_meeting(x, y + (2*Gravity-1), water2)) {
				if (!world.IJ && jump_left > 0) {
					jump_left--;
				}
			} else {
				reset_jumps();
			}
			
			audio_play_sound(sndDJump, 0 ,false);
		}
	}
}

function player_vjump() {
	Gravity = !Gravity;
	set_mask();
	if (GravityH) {
		x += jump_height[0] * (2*Gravity - 1);
		hspd = jump_height[0] * (2*Gravity - 1);
	} else {
		y += jump_height[0] * (2*Gravity - 1);
		vspd = jump_height[0] * (2*Gravity - 1);
	}
	audio_play_sound(sndVJump, 0 ,false);
}

function player_fall() {
	if noGravity {exit;}
	if (GravityH) {
		if (hspd * (2*Gravity-1) < 0) {
			hspd *= 0.45;
		}
	} else {
		if (vspd * (2*Gravity-1) < 0) {
			vspd *= 0.45;
		}
	}
}

function player_shoot() {
	if (instance_number(bullet) < 6) {
		var temp = instance_create_layer(x, y, "Player", bullet);
		temp.visible = visible;
		audio_play_sound(sndShoot, 0 ,false);
	}
}

function reset_jumps() {
	jump_left = jump_total - 1;
}

function kill_player(outside = false) {
    if (instance_exists(player)) {
		var xx = player.x, yy = player.y, cam = view_camera[0];
		
		if (!world.kill) {
			if (player.invinc) exit;
			audio_play_sound(sndDeath, 0, false);
			with(player) { invinc = true; invinc_time = 50; }
			exit;
		}
		
		if (instance_exists(playerHealth) && !outside) {
			if (player.invinc) exit;
			if (playerHealth.hp < 10) playerHealth.hp -= 1;
			if (playerHealth.hp > 0) {
				audio_play_sound(sndDeath, 0, false);
				with(player) { invinc = true; invinc_time = 50; }
				with(playerHealth) { changed = true; t = 0; }
				exit;
			} else {
				with(playerHealth) instance_destroy();
			}
		}
		
		with(world) {music_speed = 0;}
		with(soundEx) {if (world.Instance != M1) audio_stop_sound(M1); if (world.Instance != M2) audio_stop_sound(M2);}
		with(soundEx2) {if (world.Instance != M1) audio_stop_sound(M1); if (world.Instance != M2) audio_stop_sound(M2);}
		
		if (instance_exists(objEndCredit) && objEndCredit.gameover) {
			world.Kill = audio_play_sound(global.Sdeath3, 5, false); audio_play_sound(sndDeath, 0, false);
		} else {
			if instance_exists(DIE2B) {with(kill_character) {instance_destroy();} audio_play_sound(sndDeath, 0, false); instance_create_depth(0, 0, -20, Hamjung02Bs3);}
			if instance_exists(DIE4) {world.Kill = audio_play_sound(global.Sdeath2, 5, false); audio_play_sound(sndDeath, 0, false);}
			else {world.Kill = audio_play_sound(global.Sdeath, 5, false); audio_play_sound(sndDeath, 0, false);}
			
			instance_create_depth(camera_get_view_x(cam)+camera_get_view_width(cam)/2,
				camera_get_view_y(cam)+camera_get_view_height(cam)/2, -1000, GAMEOVER);
		}
		world.filePlaying = -1; //For music purposes

		bsq = instance_create_layer(xx, yy, "Player", bloodSquirt);
		bsq.xx = xx;
		bsq.yy = yy;
		bsq.Gravity = player.Gravity;
		bsq.GravityH = player.GravityH;
		
		if (instance_exists(Hamjung03I)) {
		    with(Hamjung03I) {
		        bsq = instance_create_layer(x, y, "Player", bloodSquirt);
		        bsq.xx = x;
		        bsq.yy = y;
		        bsq.Gravity = player.Gravity;
		        bsq.GravityH = player.GravityH;
		    }
		    with(bloodSquirt) amount /= instance_number(Hamjung03I)+1;
		    with(Hamjung03I) instance_destroy();
		}
		
		if instance_exists(bullet) {with(bullet) instance_destroy();}
		with(player) instance_destroy();
		with(Boss04_64) instance_destroy();
        
		world.deaths[0]++;
		with(world) {saveDeaths();}
    }
}

function outside_room() {
	if (!instance_exists(player)) {
	    return false;
	} else {
	    return (player.x < 0 || player.x > room_width || player.y < 0 || player.y > room_height);
	}
}

function set_mask() {
	if (!instance_exists(playerDotKid)) {
		image_angle = 90*GravityH;
		mask_index = (Gravity) ? maskPlayer : maskPlayer2;
	} else mask_index = sprPlayer2;
}

function flip_grav(snd_enable = true) {
	Gravity = !Gravity;
	set_mask();
	if (GravityH) {
		x += 4 * (2*Gravity - 1); hspd = 0;
	} else {
		y += 4 * (2*Gravity - 1); vspd = 0;
	}
		
	if (snd_enable) audio_play_sound(sndVJump, 0, false);
	reset_jumps();
}

function rotate_grav(snd_enable = true) {
	GravityH = !GravityH;
	set_mask();
	hspd = 0; vspd = 0;
	x = round(x); y = round(y);
	if (GravityH) {
		if (place_meeting(x-16, y, block)) {
			while(place_meeting(x-1, y, block)) x++;
		} else if (place_meeting(x+16, y, block)) {
			while(place_meeting(x+1, y, block)) x--;
		}
	} else {
		if (place_meeting(x, y-16, block)) {
			while(place_meeting(x, y-1, block)) y++;
		} else if (place_meeting(x, y+16, block)) {
			while(place_meeting(x, y+1, block)) y--;
		}
	}
		
	if (snd_enable) audio_play_sound(sndHJump, 0, false);
	reset_jumps();
}