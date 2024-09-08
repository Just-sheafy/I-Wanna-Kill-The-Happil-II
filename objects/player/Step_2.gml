#region End Step collision with block
///Resolve collisions between step and now, collide with dynamic blocks
if (place_meeting(x, y, block)) {
    var dir_x = sign(x - xsafe);
    var dir_y = sign(y - ysafe);
    var num = 0, epsilon = 0.001; //Appease the floating point gods
    
    //If something moved the player into a block since Step, move back towards where we were until we're out of a block.
	while (place_meeting(x, y, block) && num < 32) {
		num += 1;
        if (dir_x * (x - xsafe) >= epsilon) {
            x -= sign(x - xsafe) * min( abs(x - xsafe), 1 );
        } else if (dir_y * (y - ysafe) >= epsilon) {
            y -= sign(y - ysafe) * min( abs(y - ysafe), 1 );
        } else {
			break;
		}
    }
}

with(block) {
	var inst = other;
	
	if (inst != noone) {
		// carry_instance
		if (!player.GravityH) {
			if (collision_rectangle(old_left, old_top - (2*player.Gravity-1), old_right, old_bottom - (2*player.Gravity-1), inst, true, true)) {
			    var carry_x = mean(bbox_left, bbox_right) - mean(old_left, old_right);
			    var carry_y;
				if (player.Gravity) carry_y = bbox_top - inst.bbox_bottom - 1;
				else carry_y = bbox_bottom - inst.bbox_top;
			
			    with (inst) {                                     
			        if (carry_x != 0) {
			            if (!instance_place(x + carry_x, y, block)) {
			                x += carry_x;
			            } else {
							while (!instance_place(x + sign(carry_x), y, block)) {
								x += sign(carry_x);
							}
			            }
			        }
			        if (carry_y > 0) {
			            if (!instance_place(x, y + carry_y, block)) {
			                y += carry_y;
						} else {
							while (!instance_place(x, y + sign(carry_y), block)) {
								y += sign(carry_y);
							}
			            }
			        }
			    }
			}
		} else {
			if (collision_rectangle(old_left - (2*player.Gravity-1), old_top, old_right - (2*player.Gravity-1), old_bottom, inst, true, true)) {
			    var carry_y = mean(bbox_top, bbox_bottom) - mean(old_top, old_bottom);
			    var carry_x;
				if (player.Gravity) carry_x = bbox_left - inst.bbox_right - 1;
				else carry_x = bbox_right - inst.bbox_left + 1;
			
			    with (inst) {                                     
			        if (carry_x != 0) {
			            if (!instance_place(x + carry_x, y, block)) {
			                x += carry_x;
			            } else {
							while (!instance_place(x + sign(carry_x), y, block)) {
								x += sign(carry_x);
							}
			            }
			        }
			        if (carry_y > 0) {
			            if (!instance_place(x, y + carry_y, block)) {
			                y += carry_y;
						} else {
							while (!instance_place(x, y + sign(carry_y), block)) {
								y += sign(carry_y);
							}
			            }
			        }
			    }
			}
		}
		
		// push_instance
		if (place_meeting(x, y, inst)) {
		    var move_x = 0, move_y = 0;
				
		    #region Push horizontally
		    if (inst.bbox_bottom - (inst.y - inst.yold) >= old_top && inst.bbox_top - (inst.y - inst.yold) <= old_bottom) {
		        if (inst.bbox_left - (inst.x - inst.xold) >= old_right) {
		            move_x = bbox_right - inst.bbox_left + 1;
		            move_x += ((inst.x + move_x) % 2 == 1.5);
		        } else if (inst.bbox_right - (inst.x - inst.xold) <= old_left) {
		            move_x = bbox_left - inst.bbox_right - 1;
		            move_x -= ((inst.x + move_x) % 2 == 0.5);
		        }
					
		        if (move_x != 0) {
		            with (inst) {
		                if (!instance_place(x + move_x, y, block)) {
		                    x += move_x;
		                }
		            }
		        }
		    }
		    #endregion
	        
		    #region Push vertically
		    if (inst.bbox_right - (inst.x - inst.xold) >= old_left && inst.bbox_left - (inst.x - inst.xold) <= old_right) {
		        if (inst.bbox_top - (inst.y - inst.yold) >= old_bottom) {
		            move_y = bbox_bottom - inst.bbox_top + 1;
		            move_y += ((inst.y + move_y) % 2 == 1.5);
		        } else if (inst.bbox_bottom - (inst.y - inst.yold) <= old_top) {
		            move_y = bbox_top - inst.bbox_bottom - 1;
		            move_y -= ((inst.y + move_y) % 2 == 0.5);
		        }
				
		        if (move_y != 0) {
		            with (inst) {
		                if (!instance_place(x, y + move_y, block)) {
		                    y += move_y;
		                }
		            }
		        }
		    }
		    #endregion
		}
	}
}
xold = x;
yold = y;

if (place_meeting(x, y, block)) kill_player(true);

#endregion

#region Old collision with platform
var platform = instance_place(x, y, platform_parent);

if (platform != noone) {
	if (GravityH) {
		if ((Gravity && x - hspd / 2 <= platform.bbox_left) || (!Gravity && x - hspd / 2 >= platform.bbox_right)) {
			x = (Gravity) ? platform.bbox_left - 9 : platform.bbox_right + 9;
			hspd = platform.hspeed;
			on_platform = true;
			reset_jumps();
		}
	} else {
		if ((Gravity && y - vspd / 2 <= platform.bbox_top) || (!Gravity && y - vspd / 2 >= platform.bbox_bottom)) {
			y = (Gravity) ? platform.bbox_top - 9 : platform.bbox_bottom + 9;
			vspd = platform.vspeed;
			on_platform = true;
			reset_jumps();
		}
	}
}
#endregion

#region Collision with killers
var killer = instance_place(x, y, kill_character);

if (killer != noone) {
	kill_player();
}
#endregion

#region Touches screen border
if (outside_room()) {
	if (room != Stage04Bs6 and room != Stage04Bs7) {
		if (instance_exists(Hamjung01E2)) {
			if (vwarp && y > room_height) {
				vwarp = false; y -= room_height;
			} else if (y < 0) {
				y += room_height;
			} else if (world.kill) kill_player(true);
		} else if (world.kill) kill_player(true);
	} else {
		audio_stop_sound(snd04_59); audio_stop_sound(snd04_60); audio_stop_sound(snd04_61);
		audio_play_sound(choose(snd04_59, snd04_60, snd04_61), 0, false, world.sound_vol);
		
		kill_player();
		reset_jumps();
		if (room == Stage04Bs7) shoot_time = 40;
		
		is_riding = false;
		with(Boss04_55) is_riding = false;
		with(Boss04_86) { image_speed = 1; hspeed = 1; alarm[0] = 25; }
		if (y >= room_height) {
			vspd = -16;
			y -= 16;
		} else if (y <= 0) {
			vspd = 16;
			y += 16;
		}
	}
}
#endregion

#region ETC
if (invinc && invinc_time > 0) {
	invinc_time -= 1;
	image_alpha = 1 - 0.5 * ((invinc_time mod 12) >= 6)
} else {
	invinc = false;
	invinc_time = 0;
	image_alpha = 1;
}

with(Hamjung03I) {
	x = player.x+ox;
	y = player.y+oy;
	sprite_index = player.sprite_index;
	image_index = player.image_index;
	mask_index = player.mask_index;
	image_xscale = player.image_xscale * player.xscale;
	image_yscale = player.image_yscale * (2*player.Gravity-1);
	image_speed = player.image_speed;
	
	var killer = instance_place(x, y, kill_character);
	
	if (killer != noone) {
		with(player) kill_player();
	}
}
#endregion