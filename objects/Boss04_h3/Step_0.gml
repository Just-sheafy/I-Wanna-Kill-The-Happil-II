a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 2);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -2);
    a = 1;
}

if (armor > 0) {
	armor_alpha = min(1, armor_alpha + 0.05);
} else {
	armor_alpha = max(0, armor_alpha - 0.1);
}
if (mode == 0) armor_alpha2 = min(1, armor_alpha2+0.1);
else armor_alpha2 = max(0, armor_alpha2-0.1);

if (b > 0) {
	b -= 1;
	cx = random_range(-3, 3);
	cy = random_range(-3, 3);
} else {
	b = 0;
	cx = 0;
	cy = 0;
}

if (mode == 0) {
	mode_t = max(mode_t-1, 0);
	ix = 480 + 2/25*sqr(mode_t);
	x = ix;
	y = iy;
	
	if (instance_exists(player) and (player.x >= x-96 and player.x <= x+265+96
		and player.y >= y-15-96 and player.y <= y+15+96)) {
		image_alpha = max(image_alpha - 0.02, 0.5);
	} else image_alpha = min(image_alpha + 0.02, 1);
} else if (mode == 4) {
	if (min(yy1, yy2) >= room_height + 300) {
		mode = 0;
		mode_t = 100;
		
		ix = 880;
		iy = 64;
		x = 880;
		y = 64;
		vspeed = 0;
		gravity = 0;
		kill_block.kill = false;
	}
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
	zx.c = false;
}