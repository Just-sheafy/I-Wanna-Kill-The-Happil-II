if crazy and sprite_index != sprBoss02_3 {
    draw_rectangle_color(x-112, y-112, x+111, y+111, color, color, color, color, false);
} else {
    if (!world.shader_supported or sprite_index != sprBoss02_3)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	else {
		if (!surface_exists(surf)) {
			surf = surface_create(sprite_get_width(sprBoss02_79), sprite_get_height(sprBoss02_79));	
		}
		surface_set_target(surf);
		shader_set(shd_noise_weighted);
		shader_set_uniform_f(t_uniform, t);
		draw_sprite(sprBoss02_79, 0, 0, 0);
		shader_reset();
		surface_reset_target();

		draw_surface_ext(surf, x-112, y-112, 224/58, 224/58, 0, c_white, 1);
	}
}