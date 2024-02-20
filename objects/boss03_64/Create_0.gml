depth = -1;
image_speed = 0;
patt = 0;
alarm[0] = 50;
alarm[11] = 1;
handx = x-184;
handy = y-225;
ox = 0;

if (layer_exists("Tiles")) {
	layer_depth(layer_get_id("Tiles"), 1);
}

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(3, world.hp_before);
	else zx.hp = 3;
	zx.hpm = 3;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(400, 368, "Player", objHealthItem2);
		zx.time = 150;
	}
	world.hp_before = -1;
}