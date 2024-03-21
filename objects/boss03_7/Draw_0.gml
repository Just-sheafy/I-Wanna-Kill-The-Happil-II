if (!noise) draw_self();
else {
	if (!surface_exists(surf)) surf = surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index));
	
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_sprite_part(sprBoss04_65, current_time, irandom_range(0, 39), irandom_range(0, 39), sprite_get_width(sprite_index), sprite_get_height(sprite_index), 0, 0);
	
	gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
	draw_sprite(sprite_index, image_index, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
		image_xscale, image_yscale, image_angle, c_white, image_alpha);
}