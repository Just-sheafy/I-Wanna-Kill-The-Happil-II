depth = 1;

hanlx = x+67;
hanly = y+248;
hanrx = x+187;
hanry = y+260;
moux = x+146;
mouy = y+79;
alarm[0] = 150;

var a = instance_create_depth(0, 0, 0, view_an4);
a.asdf = 3575;

var temp = instance_create_depth(736, 64, -50, objTime1);
temp.time = 3575;
temp.time_max = temp.time;

patt = 0;

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = world.hp_before;
	else zx.hp = 2;
	zx.hpm = 2;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(288, 544, "Player", objHealthItem1);
		zx.time = 200;
	}
	world.hp_before = -1;
}

// Practice
if (global.practice >= 0) {
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}