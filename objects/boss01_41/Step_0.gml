if (y < 0 and vspeed < 0) instance_destroy();
if (!bump) {
	if (instance_exists(player)) {
		hspeed = clamp((player.x-x)/64, 1.5, 3);
	}
}