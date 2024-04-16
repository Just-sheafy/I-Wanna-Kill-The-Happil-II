if (mode == 1) {
    sprite_index = choose(sprBoss04_15, sprBoss04_70, sprBoss04_71, sprBoss04_72, sprBoss04_73);
} else if (mode == 2) {
    sprite_lindex = choose(sprBoss04_15, sprBoss04_70, sprBoss04_71, sprBoss04_72, sprBoss04_73);
    image_lindex = irandom_range(0, image_number-1);
    sprite_rindex = choose(sprBoss04_15, sprBoss04_70, sprBoss04_71, sprBoss04_72, sprBoss04_73);
    image_rindex = irandom_range(0, image_number-1);
    ly += 1;
    ry += 1.5;
    sep += 0.005;
} else if (mode == 3) {
    sprite_lindex = choose(sprBoss04_15, sprBoss04_70, sprBoss04_71, sprBoss04_72, sprBoss04_73);
    image_lindex = irandom_range(0, image_number-1);
    sprite_rindex = choose(sprBoss04_15, sprBoss04_70, sprBoss04_71, sprBoss04_72, sprBoss04_73);
    image_rindex = irandom_range(0, image_number-1);
    lx -= 0.5;
    ly += 1;
    langle += .05;
    rx += 0.5;
    ry += 1.5;
    rangle -= .05;
    sep += 0.005;
} else if (mode == 4) {
	scale += 0.02;
	if (surf_index != 0) {
		if (noise or (irandom_range(0, 25) == 0)) {
			Instance2 = audio_play_sound(snd02_1, 0, true, world.sound_vol);
			surf_index = 0;
			_scale = scale + random_range(-0.5, 0.5);
			alarm[11] = 5 + (noise? 15:0);
		} else surf_index = (surf_index == 1)? 2: 1;
	}
}

if (surf_index == 0) {
	var i, j, ir, jr;
	
	if (!surface_exists(surf_temp)) surf_temp = surface_create(104*3, 88*3);
	if (!surface_exists(surf[0])) {
		var w, h, cam = view_camera[0];
		
		w = camera_get_view_width(cam);
		h = camera_get_view_height(cam);
		surf[0] = surface_create(w, h);
	}
	
	surface_set_target(surf_temp);
	draw_clear_alpha(c_black, 0);
	
	for(i=0; i<ceil(88*3/64); i+=1) {
		for(j=0; j<ceil(104*3/64); j+=1) {
		    ir = irandom_range(0, 31); jr = irandom_range(0, 31);
		    draw_sprite_part_ext(sprBoss04_65, current_time+i+j, ir, jr, 32, 32, 64*i, 64*j, 2, 2, c_white, 1);
		}
	}
	
	gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
	draw_sprite_ext(sprBoss04_62, 0, 0, 0, 3/2, 3/2, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(sprBoss04_62, 2, 0, 0, 3/2, 3/2, 0, c_white, 1);
	surface_reset_target();
	
	surface_set_target(surf[0]);
	draw_clear(c_black);
	draw_surface_ext(surf_temp, 400-52*_scale, 304-44*_scale, _scale/3, _scale/3, 0, c_white, 1);
	surface_reset_target();
}