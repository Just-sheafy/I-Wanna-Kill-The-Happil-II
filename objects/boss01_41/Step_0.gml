if (y < 0 and vspeed < 0) {
	instance_destroy();
	if (sid1 != -1) { with(sid1) instance_destroy(); }
	if (sid2 != -1) { with(sid2) instance_destroy(); }
}
if (!bump) {
	if (instance_exists(player)) {
		hspeed = clamp((player.x-x)/64, 1.5, 3);
	}
}