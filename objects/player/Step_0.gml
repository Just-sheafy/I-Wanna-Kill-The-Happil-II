#region Movement
if (!is_riding) grav = grav_amount * (2*Gravity-1);
else grav = 0;

var dir_up = keyboard_check_direct(world.upKey);
var dir_down = keyboard_check_direct(world.downKey);
var dir_left = keyboard_check_direct(world.leftKey);
var dir_right = keyboard_check_direct(world.rightKey);
var dir = 0;

//If the player is frozen no movement is applied
if (!frozen || is_riding) {
	if (GravityH) {
	    if (dir_up) {
	        dir = 1;
		} else if (dir_down) {
	        dir = -1;
		}
	} else {
	    if (dir_right) {
	        dir = 1;
		} else if (dir_left) {
	        dir = -1;
		}
	}
}

set_mask();

var on_vineR, on_vineL;
if (GravityH) {
	on_block = place_meeting(x + (2*Gravity-1), y, block);
	on_vineR = (place_meeting(x, y - 1, vineR) && !on_block);
	on_vineL = (place_meeting(x, y + 1, vineL) && !on_block);
} else {
	on_block = place_meeting(x, y + (2*Gravity-1), block);
	on_vineR = (place_meeting(x - 1, y, vineR) && !on_block);
	on_vineL = (place_meeting(x + 1, y, vineL) && !on_block);
}

if (dir != 0) {
	if (!on_vineR && !on_vineL) {
		xscale = dir;
	}
	
	if ((dir == 1 && !on_vineR) || (dir == -1 && !on_vineL)) {
		if (GravityH) vspd = -max_hspd * dir;
		else hspd = max_hspd * dir;
		image_speed = 0.5;
		sprite_index = sprPlayerRunning;
	}
} else {
	if (GravityH) vspd = 0;
	else hspd = 0;
	image_speed = 0.2;
	sprite_index = sprPlayerIdle;
}

if (GravityH) {
	if (!on_platform) {
		if (hspd * (2*Gravity-1) < -0.05) {
		    sprite_index = sprPlayerJump;
		} else if (hspd * (2*Gravity-1) > 0.05) {
		    sprite_index = sprPlayerFall;
		}
	} else if (!place_meeting(x + 4 * (2 * Gravity - 1), y, platform_parent)) {
		on_platform = false;
	}
	
	if (hspd * (2*Gravity-1) > max_vspd) {
		hspd = max_vspd * sign(hspd);
	}
} else {
	if (!on_platform) {
		if (vspd * (2*Gravity-1) < -0.05) {
		    sprite_index = sprPlayerJump;
		} else if (vspd * (2*Gravity-1) > 0.05) {
		    sprite_index = sprPlayerFall;
		}
	} else if (!place_meeting(x, y + 4 * (2 * Gravity - 1), platform_parent)) {
		on_platform = false;
	}
	
	if (vspd * (2*Gravity-1) > max_vspd) {
		vspd = max_vspd * sign(vspd);
	}
}

if (!frozen) {
	if (!on_vineR && !on_vineL) {
		if (keyboard_check_pressed(world.jumpKey)) {
			player_jump();
		}
		
		if (keyboard_check_released(world.jumpKey)) {
			player_fall();
		}
	}
	
	if (!instance_exists(playerDotKid)) {
	    if world.items[2] and world.WASP_ok {
	        if wasp_time < 8 - 6*(room == Stage03Sr) and wasp_time > 0 {wasp_time += 1;} else {wasp_time = 0;}
	        if keyboard_check(world.shootKey) and wasp_time == 0 {player_shoot(); wasp_time += 1;}
	    } else {
	        if (keyboard_check_pressed(world.shootKey)) player_shoot();
	    }
	} else {
		if keyboard_check(world.shootKey) {if !instance_exists(bow2) {instance_create_depth(x, y, -3, bow2);}}
            else {with(bow2) {instance_destroy();}}
	}
	
	if (on_vineR || on_vineL) {
		xscale = (on_vineL) ? 1 : -1;
	    if (GravityH) {
			xscale *= -1;
			hspd = 2 * (2*Gravity-1);
		} else vspd = 2 * (2*Gravity-1);
		grav = 0;
		image_speed = 0.5;
	    sprite_index = sprPlayerSliding;
		
		if (GravityH) {
		    if ((on_vineR && keyboard_check_pressed(world.downKey)) || (on_vineL && keyboard_check_pressed(world.upKey))) {
		        if (keyboard_check_direct(world.jumpKey)) {
		            vspd = (on_vineR) ? 15 : -15;
		            hspd = -9 * (2*Gravity-1);
		            sprite_index = sprPlayerJump;
					audio_play_sound(sndJump, 0, false, world.sound_vol);
		        } else {
		            vspd = (on_vineR) ? 3 : -3;
		            sprite_index = sprPlayerFall;
		        }
		    }
		} else {
		    if ((on_vineR && keyboard_check_pressed(world.rightKey)) || (on_vineL && keyboard_check_pressed(world.leftKey))) {
		        if (keyboard_check_direct(world.jumpKey)) {
		            hspd = (on_vineR) ? 15 : -15;
		            vspd = -9 * (2*Gravity-1);
		            sprite_index = sprPlayerJump;
					audio_play_sound(sndJump, 0, false, world.sound_vol);
		        } else {
		            hspd = (on_vineR) ? 3 : -3;
		            sprite_index = sprPlayerFall;
		        }
		    }
		}
	}
}

if instance_exists(playerDotKid) {sprite_index = sprPlayer2; image_xscale = 1;}
#endregion

#region Collision
//Storing the previous x and y
xprevious = x;
yprevious = y;

//Moving the player manually
if (!noGravity) {
	if (GravityH) {
		hspd += grav;
		
		if (instance_exists(VJumping)) {
			if (Gravity) hspd = max_vspd;
			else hspd = -max_vspd;
		}
	} else {
		vspd += grav;
		
		if (instance_exists(VJumping)) {
			if (Gravity) vspd = max_vspd;
			else vspd = -max_vspd;
		}
	}
}
x += hspd;
y += vspd;

//Collision with block
var __block = instance_place(x, y, block), platform;

if (GravityH) platform = instance_place(x + hspd, y, platform_parent);
else platform = instance_place(x, y + vspd, platform_parent);

if (__block != noone) {
	x = xprevious;
	y = yprevious;
	
	if (GravityH) {
		//Detect vertical collision
		if (place_meeting(x, y + vspd, block)) {
			while (!place_meeting(x, y + sign(vspd), block)) {
				y += sign(vspd);
			}
	
		    vspd = 0;
		}

		//Detect horizontal collision
		if (place_meeting(x + hspd, y, block)) {
			while (!place_meeting(x + sign(hspd), y, block)) {
				x += sign(hspd);
			}
	
			if (hspd * (2*Gravity-1) > 0) {
				reset_jumps();
			} else if (noGravity and hspd * (2*Gravity-1) < 0) {
				noGravity = false; reset_jumps();
			}
	
		    hspd = 0;
			grav = 0;
		}
	} else {
		//Detect horizontal collision
		if (place_meeting(x + hspd, y, block)) {
			while (!place_meeting(x + sign(hspd), y, block)) {
				x += sign(hspd);
			}
	
		    hspd = 0;
		}

		//Detect vertical collision
		if (place_meeting(x, y + vspd, block)) {
			while (!place_meeting(x, y + sign(vspd), block)) {
				y += sign(vspd);
			}
	
			if (vspd * (2*Gravity-1) > 0) {
				reset_jumps();
			} else if (noGravity and vspd * (2*Gravity-1) < 0) {
				noGravity = false; reset_jumps();	
			}
	
		    vspd = 0;
			grav = 0;
		}
	}

	//Detect diagonal collision
	if (place_meeting(x + hspd, y + vspd, block)) {
		if (platform != noone) {
			if (GravityH) vspd = 0;
			else hspd = 0;
		} else {
			if (GravityH) {
				if (noGravity and hspd * (2*Gravity-1) < 0) {
					noGravity = false; reset_jumps();
				}
				hspd = 0;
			} else {
				if (noGravity and vspd * (2*Gravity-1) < 0) {
					noGravity = false; reset_jumps();	
				}
				vspd = 0;
			}
		}
	}

	x += hspd;
	y += vspd;
	
	if (GravityH) {
		//Makes player move based on the block speed
		if (!place_meeting(x, y + __block.vspd, block)) {
			y += __block.vspd;
		}
	
		x += __block.hspd;
	} else {
		//Makes player move based on the block speed
		if (!place_meeting(x + __block.hspd, y, block)) {
			x += __block.hspd;
		}
	
		y += __block.vspd;
	}
	
	/*
	//If after the movement it's still inside a block, you die
	if (place_meeting(x, y, block)) {
		kill_player();
	}
	*/
}

xsafe = xprevious + hspd;
ysafe = yprevious + vspd;

/*
//Collision with platform
if (platform != noone) {
	if (GravityH) {
		if (hspd * (2*Gravity-1) > 0) {
			var bbox_check;
			if (Gravity) {
				bbox_check = (bbox_right - max(1, abs(hspd)) <= platform.bbox_left);
			} else {
				bbox_check = (bbox_left + max(1, abs(hspd)) >= platform.bbox_right);
			}

			if (bbox_check) {
				x = xprevious;
		
				//Detect vertical collision
				if (place_meeting(x + hspd, y, platform_parent)) {
					while (!place_meeting(x + 1*(2*Gravity-1), y, platform_parent)) {
						x += (2*Gravity-1);
					}

				    hspd = 0;
					grav = 0;
					reset_jumps();
				}
	
				x += hspd;
		
				//Makes player move based on the platform speed
				if (!place_meeting(x, y + platform.vspd, block)) {
					y += platform.vspd;
				}
	
				x += platform.hspd;
			}
		}
	} else {
		if (vspd * (2*Gravity-1) > 0) {
			var bbox_check;
			if (Gravity) {
				bbox_check = (bbox_bottom - max(1, abs(vspd)) <= platform.bbox_top);
			} else {
				bbox_check = (bbox_top + max(1, abs(vspd)) >= platform.bbox_bottom);
			}

			if (bbox_check) {
				y = yprevious;
		
				//Detect vertical collision
				if (place_meeting(x, y + vspd, platform_parent)) {
					while (!place_meeting(x, y + (2*Gravity-1), platform_parent)) {
						y += (2*Gravity-1);
					}

				    vspd = 0;
					grav = 0;
					reset_jumps();
				}
	
				y += vspd;
		
				//Makes player move based on the platform speed
				if (!place_meeting(x + platform.hspd, y, block)) {
					x += platform.hspd;
				}
	
				y += platform.vspd;
			}
		}
	}
}
*/

#endregion