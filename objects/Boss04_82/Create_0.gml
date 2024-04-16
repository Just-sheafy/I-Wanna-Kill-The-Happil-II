if (world.shader_supported) {
	_resolution = shader_get_uniform(shdDistortion, "resolution");
	_time = shader_get_uniform(shdDistortion, "time");
	_hspd = shader_get_uniform(shdDistortion, "hspd");
}

resol[0] = room_width;
resol[1] = room_height;

t = 0;
t_spd = 1;
hspd = 0;