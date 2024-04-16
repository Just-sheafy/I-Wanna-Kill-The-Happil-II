if (world.shader_supported) {
	_time = shader_get_uniform(shdSun, "time");
	_time2 = shader_get_uniform(shdSun, "time2");
	_alpha = shader_get_uniform(shdSun, "alpha");
	_col = shader_get_uniform(shdSun, "destColor");
	_col2 = shader_get_uniform(shdSun, "destColor2");
	_col3 = shader_get_uniform(shdSun, "destColor3");
	_resolution = shader_get_uniform(shdSun, "resolution");
	_number = shader_get_uniform(shdSun, "number");
}

resol[0] = room_width;
resol[1] = room_height;

col[0] = 0.52;
col[1] = 0.2;
col[2] = 0.1;
col2[0] = 0.0;
col2[1] = 0.2;
col2[2] = 0.9;
col3[0] = 0.2;
col3[1] = 0.9;
col3[2] = 0.45;

t = 0;
t2 = 0;
t_spd = 1;
t2_spd = 1;
alpha = 0;
number = 2;