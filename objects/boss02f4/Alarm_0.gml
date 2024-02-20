with(Boss02_69) {
	if (instance_exists(player)) {
	    var zx = instance_create_depth(hanlx, hanly, -4, fruit);
	    zx.sprite_index = sprFruitY;
	    zx.direction = point_direction(zx.x, zx.y, player.x, player.y);
	    zx.speed = 6;
	    zx = instance_create_depth(hanrx, hanry, -4, fruit);
	    zx.sprite_index = sprFruitY;
	    zx.direction = point_direction(zx.x, zx.y, player.x, player.y);
	    zx.speed = 6;
	}
}
alarm[0] = 24;