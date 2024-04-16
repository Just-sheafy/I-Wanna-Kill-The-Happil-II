image_xscale = scale;
image_yscale = scale;
image_alpha = alpha;

if (!surface_exists(surf))
	surf = surface_create(6*sprite_get_width(sprite_index), 6*sprite_get_height(sprite_index));

if (mode == 9) {
	if (!surface_exists(surf_room)) {
		surf_room = surface_create(room_width, room_height);
	}
	if (!surface_exists(mask_surf)) {
		mask_surf = surface_create(w, h);
		
		surface_set_target(mask_surf);
		draw_clear(c_black);
		gpu_set_blendmode(bm_subtract);
		draw_sprite(sprBoss04_62, 0, 0, 0);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	surface_set_target(surf_room);
	draw_clear_alpha(c_black, 0);
	
	// shader
	if (world.shader_supported && shader_is_compiled(shdTornado)) {
		shader_set(shdTornado);
		shader_set_uniform_f(__time, _t);
		shader_set_uniform_f_array(__resolution, _resol);
		shader_set_uniform_f_array(__col, _col);
		shader_set_uniform_f(__rot, _rot);
		
		draw_set_color(c_white);
		draw_rectangle(0, 0, room_width, room_height, false);
		
		shader_reset();
	}
	
	// draw screen
	with(Boss04_40) event_perform(ev_draw, ev_draw_normal);
	with(Boss04_41) event_perform(ev_draw, ev_draw_normal);
	with(Boss04_39) event_perform(ev_draw, ev_draw_normal);
	with(Boss04_62) draw_self();
	with(Boss04_63) draw_self();
	with(Boss04_64) event_perform(ev_draw, ev_draw_normal);
	
	// masking
	gpu_set_blendmode(bm_subtract);
	draw_surface_ext(mask_surf, 0, 0, room_width/w, room_height/h, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
	
	draw_sprite_ext(sprBoss04_62, 1, 0, 0, room_width/w, room_height/h, 0, c_white, 1);
	draw_sprite_ext(sprBoss04_62, 2, 0, 0, room_width/w, room_height/h, 0, c_white, 1);
	
	surface_reset_target();
}

surface_set_target(surf);
draw_clear_alpha(c_white, 0);
if (mode != 9 and mode != 10) {
	draw_sprite_ext(sprite_index, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c_white, 1);
} else if (mode == 9) {
	draw_surface_ext(surf_room, _xoffset-sprite_get_xoffset(sprBoss04_15)*scale * cos(degtorad(image_angle))-sprite_get_yoffset(sprBoss04_15)*scale * sin(degtorad(image_angle)),
		_yoffset-sprite_get_yoffset(sprBoss04_15)*scale * cos(degtorad(image_angle)) + sprite_get_xoffset(sprBoss04_15)*scale * sin(degtorad(image_angle)),
		sprite_get_width(sprBoss04_15)*scale/room_width, sprite_get_height(sprBoss04_15)*scale/room_height, 0, c_white, 1);
} else if (mode == 10) {
	draw_sprite_ext(sprite_index, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c_white, mode_time/50);
	draw_surface_ext(surf_room, _xoffset-sprite_get_xoffset(sprBoss04_15)*scale * cos(degtorad(image_angle))-sprite_get_yoffset(sprBoss04_15)*scale * sin(degtorad(image_angle)),
		_yoffset-sprite_get_yoffset(sprBoss04_15)*scale * cos(degtorad(image_angle)) + sprite_get_xoffset(sprBoss04_15)*scale * sin(degtorad(image_angle)),
		sprite_get_width(sprBoss04_15)*scale/room_width, sprite_get_height(sprBoss04_15)*scale/room_height, 0, c_white, 1-mode_time/50);
}
surface_reset_target();