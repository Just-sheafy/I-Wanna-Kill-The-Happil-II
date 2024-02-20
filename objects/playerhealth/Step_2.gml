if (!instance_exists(player)) {
	if (!not_check) instance_destroy();
	exit;
}

x = player.x;
y = player.y;