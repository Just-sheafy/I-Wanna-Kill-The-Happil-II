if (!instance_exists(player) or !troll) {
	d += 4;
	y = oy + 4*sin(degtorad(d));
} else if (!is_eaten) {
	var dir;
	
	dir = point_direction(x, y, player.x, player.y);
	x += lengthdir_x(3, dir);
	y += lengthdir_y(3, dir);
}