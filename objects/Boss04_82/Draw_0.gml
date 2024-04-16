if (world.shader_supported && shader_is_compiled(shdDistortion)) {
	shader_set(shdDistortion);
	shader_set_uniform_f(_time, t);
	shader_set_uniform_f_array(_resolution, resol);
	shader_set_uniform_f(_hspd, hspd);
	
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, false);

	shader_reset();
}