if (world.shader_supported) {
	_resolution = shader_get_uniform(shdMobius, "resolution");
	_time = shader_get_uniform(shdMobius, "time");
	_time_init = shader_get_uniform(shdMobius, "time_init");
	_width = shader_get_uniform(shdMobius, "width");
}

resol[0] = room_width;
resol[1] = room_height;

WIDTH = 200;
t_init = 0;
t = -100;
destroy = false;

surface = -1;
if (world.items[0] and world.BH_ok) { with(Boss04_h3) visible = false; }
with(Boss04_51) visible = false;