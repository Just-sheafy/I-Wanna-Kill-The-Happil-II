if patt < 6 {
	var i, zx;
    for(i=0; i<40; i+=1) {
        zx = instance_create_depth(x, y, -4, fruit);
        zx.sprite_index = sprFruitV;
        if (instance_exists(player)) zx.direction = point_direction(x, y, player.x, player.y)+9*i;
		else zx.direction = 9*i;
        zx.speed = 12;
    }
    patt += 1;
    alarm[0] = 15;
} else {instance_destroy();}