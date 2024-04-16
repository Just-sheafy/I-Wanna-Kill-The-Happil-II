if (!instance_exists(player)) instance_destroy();

if (!destroy) {
	t_init = min(t_init+16, room_height);
	t += 3200/750;
} else {
	t_init -= 16;
	if (t_init <= 0) instance_destroy();
}