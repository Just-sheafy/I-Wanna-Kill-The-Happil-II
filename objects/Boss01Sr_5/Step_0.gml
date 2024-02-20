if (y < -16) instance_destroy();

if (!instance_exists(player)) image_xscale = 1;
else {
	if (x > player.x) image_xscale = 1;
	else image_xscale = -1;
}