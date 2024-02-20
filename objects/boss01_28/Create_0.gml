depth = 2;

a = 0;
patt = 0;

alarm[0] = 2240;
alarm[2] = 215;

var temp = instance_create_depth(736, 64, -50, objTime1);
temp.time = 2240;
temp.time_max = temp.time;

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = world.hp_before;
	else zx.hp = 3;
	zx.hpm = 3;
	world.hp_before = -1;
}