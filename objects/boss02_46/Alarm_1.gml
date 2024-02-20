if (instance_exists(player)) {
	if (player.x >= 400)
		instance_create_depth(32, 480, -1, Boss02_50);
	else instance_create_depth(768, 480, -1, Boss02_50);
}
alarm[1] = 600;