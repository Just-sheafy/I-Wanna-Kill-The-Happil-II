if sprite_index = block02Bs {
	image_alpha = random(1);
	if (instance_exists(player) and image_index != 9) {
		if point_distance(x+16, y+16, player.x, player.y) > 150 or image_index == 0 {ang = 255;}
		else {ang = point_distance(x+16, y+16, player.x, player.y)*255/150;}
	} else ang = 255;
}