image_speed = 1/2;
canhit = 1;
nothit = 0;
patt = 0;
sp = 8;
oy = y;
a = 0;
d = 0;
a1 = 0;
a2 = 0;
a3 = 0;
a4 = 0;
a9 = 0;
heal = false;
heal_time = 0;
heal_alpha = 0;

instance_create_depth(0, 0, -8, Boss01_h11);
air = 1;
alarm[0] = irandom_range(200, 350);
alarm[9] = irandom_range(50, 150);
alarm[10] = irandom_range(150-air*50, 250-air*100);
alarm[8] = 1;

if (global.practice >= 0) {
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
}

var zx = instance_create_depth(x, y, -10, Boss01_n);
zx.sid = id;
zx.ox = -91;
zx.oy = -32;

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(2, world.hp_before);
	else zx.hp = 2;
	zx.hpm = 2;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(400, 480, "Player", objHealthItem1);
		zx.time = 100;
	}
	world.hp_before = -1;
}

instance_create_depth(0, 0, 250, Boss01_42);
depth = -2;