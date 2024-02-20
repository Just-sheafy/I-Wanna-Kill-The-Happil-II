if (world.shader_supported) {
	_time = shader_get_uniform(shdTornado, "time");
	_resolution = shader_get_uniform(shdTornado, "resolution");
	_col = shader_get_uniform(shdTornado, "col");
	_rot = shader_get_uniform(shdTornado, "rot");
}
resol[0] = room_width/2;
resol[1] = room_height/2;

col[0] = 15;
col[1] = 0;
col[2] = 1;
col_after[0] = col[0];
col_after[1] = col[1];
col_after[2] = col[2];

t = 0;
t_spd = 1;
t_spd_extra = 0;
spd = 1;
spd_after = 1;
rot = 1;