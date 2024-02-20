if image_alpha < 1 {image_alpha += 0.05;}
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

if (b > 0) {
	b -= 1;
	cx = random_range(-3, 3);
	cy = random_range(-3, 3);
} else {
	b = 0;
	cx = 0;
	cy = 0;
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
	zx.c = false;
}