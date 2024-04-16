enable = true;
if (!world.screen_effect_enable) {
	enable = false;
}

WIDTH = 200;
t_init = 0;
t = -100;
destroy = false;

surface = -1;
if (enable) {
	// exceptional
	if (world.items[0] and world.BH_ok) { with(Boss04_h3) visible = false; }
	with(Boss04_51) visible = false;
}