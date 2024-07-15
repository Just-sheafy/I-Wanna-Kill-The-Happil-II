function scr_draw_noise(sprite_index, image_index, x, y, image_angle, image_blend, image_alpha, min_weight, max_weight, div_factor, surf_ptr)
{
	static t_uniform = shader_get_uniform(shd_noise_weighted, "time");
	static weights_uniform = shader_get_uniform(shd_noise_weighted, "weights");

	var cx = sprite_get_xoffset(sprite_index);
	var cy = sprite_get_yoffset(sprite_index);

	surface_set_target(surf_ptr);
	shader_set(shd_noise_weighted);
	shader_set_uniform_f(t_uniform, random(1));
	shader_set_uniform_f(weights_uniform, min_weight, max_weight);
	
	draw_sprite_ext(sprite_index, image_index, cx / div_factor, cy / div_factor, 1 / div_factor, 1 / div_factor, 0, c_white, 1);
	
	shader_reset();
	surface_reset_target();
	
	x += -cx * dcos(image_angle) - cy * dsin(image_angle);
	y += cx * dsin(image_angle) - cy * dcos(image_angle);
	
	draw_surface_ext(surf_ptr, x, y, div_factor, div_factor, image_angle, image_blend, image_alpha);
}