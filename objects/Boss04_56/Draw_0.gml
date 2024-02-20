if (world.shader_supported && shader_is_compiled(shdSun)) {
	shader_set(shdSun);
	shader_set_uniform_f(_time, t);
	shader_set_uniform_f(_alpha, alpha);
	shader_set_uniform_f_array(_resolution, resol);
	shader_set_uniform_f(_number, number);
	
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, false);

	shader_reset();
}