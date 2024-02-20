image_alpha = random_range(0.5, 0.8);

if (patt > 0) {
	if (instance_exists(player) and x <= player.x) {
		var temp = instance_create_depth(player.x, player.y, -2, Boss02_60);
	    temp.direction = point_direction(832, 400, player.x, player.y);
	    temp.speed = 8;
	    with(player) instance_destroy();
		pat = 1;
	}
}