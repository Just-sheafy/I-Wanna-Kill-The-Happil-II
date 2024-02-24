index += 1;
if (index >= 40) index -= 40;

if (!instance_exists(player)) exit;

if (practice) {
	if (keyboard_check_pressed(world.skipKey)) {
		var zx;
		
        with(world) {
			secretBoss1Skip = min(2, secretBoss1Skip+1);
            if filePlaying != 3.95 and curMusic != global.stage01Sr2 {
                audio_stop_sound(Instance);
                filePlaying = 3.95;
                curMusic = global.stage01Sr2;
                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
            }
            break; 
        }
		
		if (world.HEALTH_ok) {
			zx = instance_create_depth(0, 0, -49, playerHealth);
			zx.hp = 3;
			zx.hpm = 3;
		}
		
		with(Boss01Sr_1) {
			var i, j, __scale = 20/32, __width = 64*__scale, __height = 64*__scale, __round = 2;
			__scale = 1;
			
			if (mode == 0) {
				surf_back = surface_create(200, 200);
				
				surface_set_target(surf_back);
				
				draw_set_color(make_color_rgb(166, 149, 129));
				draw_roundrect_ext(100-__width*COLUMN/2-__round, 100-__height*ROW/2-__round,
					100+__width*COLUMN/2+__round, 100+__height*ROW/2+__round, __round*2, __round*2, false);
				
				for(i=0; i<COLUMN; i+=1) {
					for(j=0; j<ROW; j+=1) {
						if (number[i, j] <= -1) continue;
						draw_set_color(col[0]);
						draw_roundrect_ext(100+__width*(-COLUMN/2+i)+__round, 100+__height*(-ROW/2+j)+__round,
							100+__width*(-COLUMN/2+i+1)-__round, 100+__height*(-ROW/2+j+1)-__round,
							__round, __round, false);
							
						if (number[i, j] <= 0) continue;
						draw_set_color(col[min(number[i, j], 12)]);
						draw_roundrect_ext(100+__width*(-COLUMN/2+i+1/2)-__scale*(__width/2 - __round),
							100+__height*(-ROW/2+j+1/2)-__scale*(__height/2 - __round),
							100+__width*(-COLUMN/2+i+1/2)+__scale*(__width/2 - __round),
							100+__height*(-ROW/2+j+1/2)+__scale*(__height/2 - __round),
							__scale*__round, __scale*__round, false);
						
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
						draw_text_transformed(100+__width*(-COLUMN/2+i+1/2), 100+__height*(-ROW/2+j+1/2),
							string(power(2, number[i, j])), __scale, __scale, 0);
					}
				}
				
				surface_reset_target();
			} else {
				surf_back = surface_create(200, 200);
				
				surface_set_target(surf_back);
				
				draw_set_color(make_color_rgb(166, 149, 129));
				draw_hexagon(100, 100, __width*COLUMN/2+__round, 0, false);
				
				for(i=0; i<COLUMN; i+=1) {
					for(j=0; j<ROW; j+=1) {
						if (number[i, j] <= -1) continue;
						draw_set_color(col[0]);
						draw_hexagon(100+(-COLUMN+1+i+j)*sqrt(3)/4*(__width+__round),
							100+(-i+j)*3/4*(__width+__round), __width/2-__round, 30, false);
						
						if (number[i, j] <= 0) continue;						
						draw_set_color(col[min(number[i, j], 12)]);
						draw_hexagon(100+(-COLUMN+1+i+j)*sqrt(3)/4*(__width+__round),
							100+(-i+j)*3/4*(__width+__round), __scale*(__width/2-__round), 30, false);
						
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
						draw_text_transformed(100+(-COLUMN+1+i+j)*sqrt(3)/4*(__width+__round),
							100+(-i+j)*3/4*(__width+__round), string(power(2, number[i, j])), __scale, __scale, 0);
					}
				}
				
				surface_reset_target();
			}
			
			if (world.secretBoss1Skip == 2) {
				mode = 0;
				ROW = 4;
				COLUMN = 4;
				for(i=0; i<COLUMN+1; i+=1) {
					for(j=0; j<ROW+1; j+=1) {
						number[i, j] = 0; // -1: empty space, 0: space, 0.5: locked
						number_changed[i, j] = 0; // 0: no change, 1: generated, 2: combined, 3: changed
						if (surf[i, j] != -1 && surface_exists(surf[i, j]))
							surface_free(surf[i, j]);
						surf[i, j] = -1;
					}
				}
			}
			
			ready = false;
			clear();
		}
		
		with(Boss01Sr_12) is_dead = true;
		
		zx = instance_create_depth(0, 0, 1, Hamjung03Bs3);
		zx.sprite_index = sprBoss04_47;
		zx.oy = 512;
		zx.spd = 2/3;
		
		zx = instance_create_depth(112, 432, 250, Boss01Sr_5);
		zx = instance_create_depth(272, 432, 250, Boss01Sr_5);
		zx.image_index = 2;
		zx = instance_create_depth(528, 432, 250, Boss01Sr_5);
		zx.image_index = 4;
		zx = instance_create_depth(688, 432, 250, Boss01Sr_5);
		zx.image_index = 6;
		
		instance_destroy();
	}
} else if instance_exists(SavePoint2) {
    if SavePoint2.saveTimer > 0 {
		var zx;
		
		if (world.secretBoss1Skip < 2) {
	        with(world) {
	            if filePlaying != 3.9 and curMusic != global.stage01Sr1 {
	                audio_stop_sound(Instance);
	                filePlaying = 3.9;
	                curMusic = global.stage01Sr1;
	                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	            }
	            break; 
	        }
			
			zx = instance_create_depth(0, 0, -8, Boss01Sr_1);
			zx.index = index;
			zx.ox = 400;
			zx.oy = 512;
			zx.CX = 400;
			zx.CY = 512;
			
			with(zx) {
				if (world.secretBoss1Skip == 1) {
					mode = 1;
					ROW = 5;
					COLUMN = 5;
					for(i=0; i<COLUMN; i+=1) {
						for(j=0; j<ROW; j+=1) {
							number[i, j] = 0; // -1: empty space, 0: space, 0.5: locked
							number_changed[i, j] = 0; // 0: no change, 1: generated, 2: combined, 3: changed
							surf[i, j] = -1;
						}
					}
					
					number[0, 3] = -1;
					number[0, 4] = -1;
					number[1, 4] = -1;
					number[3, 0] = -1;
					number[4, 0] = -1;
					number[4, 1] = -1;
				}
				
				clear();
			}
			
			instance_create_depth(400, 192, 150, Boss01Sr_12);
			Boss01Sr_12.mode = Boss01Sr_1.mode;
			
			practice = true;
			
	        instance_create_depth(0, 0, -100, light);
	        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
	        zx = instance_create_depth(800, 0, -2000, StageGet);
	        zx.image_index = 15;
	        with(CanS) {instance_destroy();}
	        with(dark1) {instance_destroy();}
		} else {
	        with(world) {
	            if filePlaying != 3.95 and curMusic != global.stage01Sr2 {
	                audio_stop_sound(Instance);
	                filePlaying = 3.95;
	                curMusic = global.stage01Sr2;
	                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	            }
	            break; 
	        }
			
			if (world.HEALTH_ok) {
				zx = instance_create_depth(0, 0, -49, playerHealth);
				zx.hp = 3;
				zx.hpm = 3;
			}
			
			zx = instance_create_depth(0, 0, -8, Boss01Sr_1);
			zx.index = index;
			zx.skip = false;
			zx.ox = 400;
			zx.oy = 512;
			zx.CX = 400;
			zx.CY = 512;
			
			with(zx) { ready = false; generate(); generate(); }
			
			zx = instance_create_depth(112, 432, 250, Boss01Sr_5);
			zx = instance_create_depth(272, 432, 250, Boss01Sr_5);
			zx.image_index = 2;
			zx = instance_create_depth(528, 432, 250, Boss01Sr_5);
			zx.image_index = 4;
			zx = instance_create_depth(688, 432, 250, Boss01Sr_5);
			zx.image_index = 6;
			
			zx = instance_create_depth(0, 0, 1, Hamjung03Bs3);
			zx.sprite_index = sprBoss04_47;
			zx.oy = 512;
			zx.spd = 2/3;
			
	        instance_create_depth(0, 0, -100, light);
	        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
	        zx = instance_create_depth(800, 0, -2000, StageGet);
	        zx.image_index = 72;
			
	        with(CanS) {instance_destroy();}
	        with(dark1) {instance_destroy();}
			instance_destroy();
		}
    }
}