var i, j, zx;

if (surface_exists(surf_back)) {
	surf_scale += 0.0125;
	if (surf_scale >= 1.25) {
		surface_free(surf_back);
		surf_back = -1;
		surf_scale = 1;
	}
}


index += 1;
if (index >= 40) index -= 40;
if (is_dead) exit;

move = min(1, move + 0.1*(1+(ds_list_size(list_input_buffer) > 0)));
if (move >= 1) {
	scale = min(1, scale + 0.1*(1+(ds_list_size(list_input_buffer) > 0)));
	ds_list_clear(list_move);
}

if (scale_AIM >= 1) {
	scale_AIM += 0.05;
	if (scale_AIM >= 2) {
		scale_AIM = 0;
		for(i=0; i<COLUMN; i+=1) {
			for(j=0; j<ROW; j+=1) {
				if (surface_exists(surf[i, j])) {
					surface_free(surf[i, j]);
					surf[i, j] = -1;
				}
			}
		}
	}
}

t += 0.8;
CY = oy + 5*sin(degtorad(t));

if (!ready) {
	if (instance_exists(player) && keyboard_check_pressed(world.skipKey)) {
		instance_create_depth(0, 0, -100, light);
		with(Boss01Sr_5) instance_destroy();
		instance_create_depth(800, 0, -5, Boss01Sr_2);
		ready = true;
		ready_time = 0;
		audio_sound_set_track_position(world.Instance, 9.65);
		
		if (skip) {
	        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
	        zx = instance_create_depth(800, 0, -2000, StageGet);
	        zx.image_index = 72;
		}
		exit;
	}
	
	ready_time += 1;
	if (ready_time == 100) {
		with(Boss01Sr_5) vspeed = -0.2;
	} else if (ready_time == 300) {
		with(Boss01Sr_5) vspeed = 0;
	} else if (ready_time == 435) {
		zx = instance_create_depth(0, 0, 0, view_an3);
		zx.asdf = 20;
		audio_play_sound(snd04_20, 0, false, world.sound_vol);
		with(Boss01Sr_5) { depth = -5; image_index += 1; vspeed = -12; }
	} else if (ready_time == 482 && instance_exists(player)) {
		ready = true;
		ready_time = 0;
		instance_create_depth(0, 0, -100, light);
		instance_create_depth(800, 0, -5, Boss01Sr_2);
		
		if (skip) {
	        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
	        zx = instance_create_depth(800, 0, -2000, StageGet);
	        zx.image_index = 72;
		}
	}
	exit;
}

if (!instance_exists(player)) exit;

if (move >= 1) {
	if (AIM != -1 && !check_AIM) {
		var temp = false;
		
		check_AIM = true;
		for(i=0; i<COLUMN; i+=1) {
			for(j=0; j<ROW; j+=1) {
				if (number[i, j] >= AIM) {
					temp = true;
					if (mode == 0)
						zx = instance_create_depth(CX+40*(-COLUMN/2+i+1/2), CY+40*(-ROW/2+j+1/2), -11, Boss01Sr_3);
					else zx = instance_create_depth(CX+(-COLUMN+1+i+j)*sqrt(3)/4*42,
						CY+(-i+j)*3/4*42, -11, Boss01Sr_3);
					zx.mode = mode;
					zx.num = number[i, j];
					zx.col = col[min(number[i, j], 12)];
					zx.vspeed = 12;
					zx.gravity = -1;
				}
			}
		}
		
		if (temp) {
			var xx, yy, __scale = 20/32, __width = 64*__scale, __height = 64*__scale, __round = 2;
			
			xx = __width*0.6;
			yy = __height*0.6;
			
			scale_AIM = 1;
			
			audio_play_sound(snd03_17, 0, false, world.sound_vol);
			zx = instance_create_depth(0, 0, 0, view_an1);
			zx.asdf = 30;
			
			for(i=0; i<COLUMN; i+=1) {
				for(j=0; j<ROW; j+=1) {
					if (number[i, j] > 0) {
						if (number[i, j] < AIM) {
							if (surface_exists(surf[i, j])) surface_free(surf[i, j]);
							surf[i, j] = surface_create(floor(xx*2), floor(yy*2));
						
							surface_set_target(surf[i, j]);
							draw_clear_alpha(c_white, 0);
							
							if (mode == 0) {
								__scale = 20/32;
								draw_set_color(col[min(number[i, j], 12)]);
								draw_roundrect_ext(xx-__width/2+__round, yy-__height/2+__round,
									xx+__width/2-__round, yy+__height/2-__round,
									__scale*__round, __scale*__round, false);
						
								draw_set_halign(fa_center);
								draw_set_valign(fa_middle);
								draw_set_font(fnt_achievements);
						
								__scale = 1;
								if (number[i, j] <= 2) {
									draw_set_color(make_color_rgb(119, 110, 101));
								} else if (number[i, j] <= 6) {
									draw_set_color(c_white);
								} else if (number[i, j] <= 9) {
									draw_set_color(c_white);
									__scale *= 0.75;
								} else if (number[i, j] <= 13) {
									draw_set_color(c_white);
									__scale *= 0.5;
								} else {
									draw_set_color(c_white);
									__scale *= 0.4;
								}
								draw_text_transformed(xx, yy, string(power(2, number[i, j])), __scale, __scale, 0);
							} else {
								__scale = 1;
								draw_set_color(col[min(number[i, j], 12)]);
								draw_hexagon(xx, yy, __scale*(__width/2-__round), 30, false);
						
								draw_set_halign(fa_center);
								draw_set_valign(fa_middle);
								draw_set_font(fnt_achievements);
								
								__scale = 1;
								if (number[i, j] <= 2) {
									draw_set_color(make_color_rgb(119, 110, 101));
								} else if (number[i, j] <= 6) {
									draw_set_color(c_white);
									__scale *= 0.9;
								} else if (number[i, j] <= 9) {
									draw_set_color(c_white);
									__scale *= 0.65;
								} else if (number[i, j] <= 13) {
									draw_set_color(c_white);
									__scale *= 0.45;
								} else {
									draw_set_color(c_white);
									__scale *= 0.3;
								}
								draw_text_transformed(xx, yy, string(power(2, number[i, j])), __scale, __scale, 0);
							}
							
							surface_reset_target();
						}
						
						number[i, j] = 0;
					}
				}
			}
			
			ds_list_clear(list_input_buffer);
			generate(prob, NUM_gen);
			generate(prob, NUM_gen);
		}
	}
} else check_AIM = false;

if (scale == 1) {
	if (!check) {
		check = true;
		for(i=0; i<COLUMN; i+=1) {
			for(j=0; j<ROW; j+=1) {
				number_changed[i, j] = 0;
			}
		}
		
		if ((mode == 0 && !goUp(false) && !goDown(false) && !goLeft(false) && !goRight(false)) ||
			(mode == 1 && !goUp(false) && !goRight(false) && !goLeft(false) &&
				!goDown(false) && !goLeftHex(false) && !goRightHex(false))) {
			var xx, yy, __scale = 20/32, __width = 64*__scale, __height = 64*__scale, __round = 2;
			
			audio_play_sound(sndBoo, 0, false, world.sound_vol);
			with(player) kill_player();
			
			xx = __width*0.6;
			yy = __height*0.6;
			
			scale_AIM = 1;
			
			for(i=0; i<COLUMN; i+=1) {
				for(j=0; j<ROW; j+=1) {
					if (number[i, j] > 0) {
						if (surface_exists(surf[i, j])) surface_free(surf[i, j]);
						surf[i, j] = surface_create(floor(xx*2), floor(yy*2));
						
						surface_set_target(surf[i, j]);
						draw_clear_alpha(c_white, 0);
						
						if (mode == 0) {
							__scale = 20/32;
							draw_set_color(col[min(number[i, j], 12)]);
							draw_roundrect_ext(xx-__width/2+__round, yy-__height/2+__round,
								xx+__width/2-__round, yy+__height/2-__round,
								__scale*__round, __scale*__round, false);
							
							draw_set_halign(fa_center);
							draw_set_valign(fa_middle);
							draw_set_font(fnt_achievements);
							
							__scale = 1;
							if (number[i, j] <= 2) {
								draw_set_color(make_color_rgb(119, 110, 101));
							} else if (number[i, j] <= 6) {
								draw_set_color(c_white);
							} else if (number[i, j] <= 9) {
								draw_set_color(c_white);
								__scale *= 0.75;
							} else if (number[i, j] <= 13) {
								draw_set_color(c_white);
								__scale *= 0.5;
							} else {
								draw_set_color(c_white);
								__scale *= 0.4;
							}
							draw_text_transformed(xx, yy, string(power(2, number[i, j])), __scale, __scale, 0);
						} else {
							__scale = 1;
							draw_set_color(col[min(number[i, j], 12)]);
							draw_hexagon(xx, yy, __scale*(__width/2-__round), 30, false);
							
							draw_set_halign(fa_center);
							draw_set_valign(fa_middle);
							draw_set_font(fnt_achievements);
							
							__scale = 1;
							if (number[i, j] <= 2) {
								draw_set_color(make_color_rgb(119, 110, 101));
							} else if (number[i, j] <= 6) {
								draw_set_color(c_white);
								__scale *= 0.9;
							} else if (number[i, j] <= 9) {
								draw_set_color(c_white);
								__scale *= 0.65;
							} else if (number[i, j] <= 13) {
								draw_set_color(c_white);
								__scale *= 0.45;
							} else {
								draw_set_color(c_white);
								__scale *= 0.3;
							}
							draw_text_transformed(xx, yy, string(power(2, number[i, j])), __scale, __scale, 0);
						}
						
						surface_reset_target();
						
						number[i, j] = 0;
					}
				}
			}
			
			ds_list_clear(list_input_buffer);
			generate(prob, NUM_gen);
			generate(prob, NUM_gen);
		}
	}
	
	if (mode == 0) {
		while (ds_list_size(list_input_buffer) > 0 && scale == 1) {
			if (ds_list_find_value(list_input_buffer, 0) == "UP" && goUp(false)) {
				goUp(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "DOWN" && goDown(false)) {
				goDown(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "LEFT" && goLeft(false)) {
				goLeft(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "RIGHT" && goRight(false)) {
				goRight(); move = 0; scale = 0;
			}
			ds_list_delete(list_input_buffer, 0);
		}
	
		if (scale == 1) {
			if (keyboard_check_pressed(world.upKey)) {
				if (goUp()) { move = 0; scale = 0; }
			} else if (keyboard_check_pressed(world.downKey)) {
				if (goDown()) { move = 0; scale = 0; }
			} else if (keyboard_check_pressed(world.leftKey)) {
				if (goLeft()) { move = 0; scale = 0; }
			} else if (keyboard_check_pressed(world.rightKey)) {
				if (goRight()) { move = 0; scale = 0; }
			}
		}
	} else {
		while (ds_list_size(list_input_buffer) > 0 && scale == 1) {
			if (ds_list_find_value(list_input_buffer, 0) == "UP_LEFT" && goUp(false)) {
				goUp(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "UP_RIGHT" && goRight(false)) {
				goRight(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "DOWN_LEFT" && goLeft(false)) {
				goLeft(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "DOWN_RIGHT" && goDown(false)) {
				goDown(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "LEFT" && goLeftHex(false)) {
				goLeftHex(); move = 0; scale = 0;
			} else if (ds_list_find_value(list_input_buffer, 0) == "RIGHT" && goRightHex(false)) {
				goRightHex(); move = 0; scale = 0;
			}
			ds_list_delete(list_input_buffer, 0);
		}
	
		if (scale == 1) {
			if (keyboard_check(world.upKey)) {
				if (keyboard_check_pressed(world.leftKey)) {
					if (goUp()) { move = 0; scale = 0; }
				} else if (keyboard_check_pressed(world.rightKey)) {
					if (goRight()) { move = 0; scale = 0; }
				}
			} else if (keyboard_check(world.downKey)) {
				if (keyboard_check_pressed(world.leftKey)) {
					if (goLeft()) { move = 0; scale = 0; }
				} else if (keyboard_check_pressed(world.rightKey)) {
					if (goDown()) { move = 0; scale = 0; }
				}
			} else if (keyboard_check_pressed(world.leftKey)) {
				if (goLeftHex()) { move = 0; scale = 0; }
			} else if (keyboard_check_pressed(world.rightKey)) {
				if (goRightHex()) { move = 0; scale = 0; }
			} else if (keyboard_check_pressed(vk_space)) {
				number[0, 0] += 1;
			}
		}
	}
} else {
	check = false;
	if (ds_list_size(list_input_buffer) < 5) {
		if (mode == 0) {
			if (keyboard_check_pressed(world.upKey)) {
				ds_list_add(list_input_buffer, "UP");
			} else if (keyboard_check_pressed(world.downKey)) {
				ds_list_add(list_input_buffer, "DOWN");
			} else if (keyboard_check_pressed(world.leftKey)) {
				ds_list_add(list_input_buffer, "LEFT");
			} else if (keyboard_check_pressed(world.rightKey)) {
				ds_list_add(list_input_buffer, "RIGHT");
			}
		} else {
			if (keyboard_check(world.upKey)) {
				if (keyboard_check_pressed(world.leftKey)) {
					ds_list_add(list_input_buffer, "UP_LEFT");
				} else if (keyboard_check_pressed(world.rightKey)) {
					ds_list_add(list_input_buffer, "UP_RIGHT");
				}
			} else if (keyboard_check(world.downKey)) {
				if (keyboard_check_pressed(world.leftKey)) {
					ds_list_add(list_input_buffer, "DOWN_LEFT");
				} else if (keyboard_check_pressed(world.rightKey)) {
					ds_list_add(list_input_buffer, "DOWN_RIGHT");
				}
			} else if (keyboard_check_pressed(world.leftKey)) {
				ds_list_add(list_input_buffer, "LEFT");
			} else if (keyboard_check_pressed(world.rightKey)) {
				ds_list_add(list_input_buffer, "RIGHT");
			}
		}
	}
}