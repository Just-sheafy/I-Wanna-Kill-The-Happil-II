draw_self();

if (blackhole_alpha > 0) {
	if (!surface_exists(surf))
	    surf = surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index));

	surface_set_target(surf);
	draw_clear(c_black);
	draw_sprite_ext(back04Bs10, 0, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index),
		1, 1, blackhole_angle, c_white, 1);
	gpu_set_blendmode(bm_subtract);
	draw_sprite(sprite_index, 1, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
	gpu_set_blendmode(bm_normal);
	surface_reset_target();

	draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index) * cos(degtorad(image_angle))
		- sprite_get_yoffset(sprite_index) * sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index) * sin(degtorad(image_angle))
		- sprite_get_yoffset(sprite_index) * cos(degtorad(image_angle)),
		1, 1, image_angle, c_white, blackhole_alpha);
}