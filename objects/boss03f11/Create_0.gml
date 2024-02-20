lx = x+69;
ly = y+241;
rx = x+187;
ry = y+252;
mx = x+147;
my = y+79;
a = 0;
alarm[0] = 1800;
alarm[2] = 15;

var temp = instance_create_depth(736, 64, -50, objTime1);
temp.time = 1680;
temp.time_max = temp.time;

patt = 75;

depth = 2;
if (layer_exists("Tiles"))
	layer_depth(layer_get_id("Tiles"), 1);

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(2, world.hp_before);
	else zx.hp = 2;
	zx.hpm = 2;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(400, 176, "Player", objHealthItem1);
		zx.time = 250;
	}
	world.hp_before = -1;
}