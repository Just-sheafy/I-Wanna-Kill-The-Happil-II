if (!instance_exists(player))
	instance_create_depth(x + 17, y + 8, -2, player);
player.Gravity = 0;
with(player) set_mask();
instance_destroy();