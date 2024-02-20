var dir = (instance_exists(player)) ? player.xscale : 1;
if (instance_exists(player)) {
	if (player.GravityH) vspeed = -16 * dir;
	else hspeed = 16 * dir;
} else hspeed = 16 * dir;

alarm[0] = 60;