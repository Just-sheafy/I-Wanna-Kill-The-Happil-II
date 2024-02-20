if (world.shader_supported && shader_is_compiled(shdTornado)) {
	shader_set(shdTornado);
	shader_set_uniform_f(_time, t);
	shader_set_uniform_f_array(_resolution, resol);
	shader_set_uniform_f_array(_col, col);
	shader_set_uniform_f(_rot, rot);
	
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, false);

	shader_reset();
}