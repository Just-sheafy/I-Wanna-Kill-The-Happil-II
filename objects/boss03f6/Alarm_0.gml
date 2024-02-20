var i, zx;

instance_destroy();
if (instance_exists(player)) {
	for(i=0; i<8; i+=1) {
	    zx = instance_create_depth(x, y, -4, fruit);
	    zx.sprite_index = sprFruitG;
	    zx.direction = point_direction(x, y, player.x, player.y)+45*i;
	    zx.speed = 8;
	}
}