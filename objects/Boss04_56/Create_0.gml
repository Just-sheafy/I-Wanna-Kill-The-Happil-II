if (world.shader_supported) {
	_time = shader_get_uniform(shdSun, "time");
	_alpha = shader_get_uniform(shdSun, "alpha");
	_resolution = shader_get_uniform(shdSun, "resolution");
	_number = shader_get_uniform(shdSun, "number");
}
resol[0] = room_width;
resol[1] = room_height;

t = 0;
t_spd = 1;
alpha = 0;
number = 2;