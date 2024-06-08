image_xscale = -2;
image_yscale = 2;
depth = -1;

if (global.practice >= 0) {
	global.practice -= 300;
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
}

patt = 0;
alarm[0] = 50;
alarm[10] = 1;
if (global.practice <= 5) instance_create_depth(0, 0, -8, Boss03_h3);
canhit = 1;
nothit = 1;
aa = 0;
ox = 0;
sid = -1;

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(2, world.hp_before);
	else zx.hp = 2;
	zx.hpm = 2;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(400, 212, "Player", objHealthItem1);
		zx.depth = -2;
		zx.time = 150;
	}
	world.hp_before = -1;
}

if (global.practice == 6) {
	// Intermission between PDplayer and Kukul
	
	aa = 1;
	alarm[0] = 0;
	alarm[1] = 100;
} else if (global.practice == 7) {
	// Kukul
	
	aa = 1;
	patt = 39;
	alarm[0] = 0;
	event_perform(ev_alarm, 1);
}