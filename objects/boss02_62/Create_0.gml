image_speed = 0.2;
depth = -3;
patt = -1;
pat = 0;
a = 0;
alarm[0] = 1;
var zx = instance_create_depth(x, y, -10, Boss02_n);
zx.image_index = 4;
zx.sid = id;
zx.ox = 26;
zx.oy = -78;

if (world.HEALTH_ok) {
	zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = world.hp_before;
	else zx.hp = 4;
	zx.hpm = 4;
	world.hp_before = -1;
}

// Practice
if (global.practice >= 0) {
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}