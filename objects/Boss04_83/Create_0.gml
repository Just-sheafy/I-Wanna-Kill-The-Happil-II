var i, temp, t, lx, ly, rx, ry;

depth = 10;
image_speed = 0;
image_xscale = 3;
image_yscale = 3;

xx = 0;
yy = 0;
angle_spd = 0;
surf = -1;

eyes[0] = instance_create_depth(200, 912, 5, Boss04_84);
eyes[1] = instance_create_depth(600, 912, 5, Boss04_84);
eyes[1].image_index = 1;
eyes[0].sid = eyes[1];
eyes[1].sid = eyes[0];
instance_create_depth(0, 0, 100, Boss04_82);

instance_create_depth(400, 364, -2, player);
with(player) {
	frozen = true; is_riding = true;
	xscale = 1;
}
temp = instance_create_depth(400, 384, -1, Boss04_55);
temp.is_riding = true;
temp.frozen = true;
temp.danger = 2;
temp.danger_time_max = 170;
temp = instance_create_depth(0, 0, -49, playerHealth);
temp.hp = 10;
temp.hpm = 10;
temp.alarm[11] = 5;

appear = false;
mode = 0;
alarm[11] = 170;

// blood
lx = x - 3*8 * cos(degtorad(image_angle)) - 3*4 * sin(degtorad(image_angle));
ly = y + 3*8 * sin(degtorad(image_angle)) - 3*4 * cos(degtorad(image_angle));
rx = x + 3*8 * cos(degtorad(image_angle)) - 3*4 * sin(degtorad(image_angle));
ry = y - 3*8 * sin(degtorad(image_angle)) - 3*4 * cos(degtorad(image_angle));

for(i=0; i<256; i+=1) {
	bl1[i] = {
		index : choose(0, 1, 2),
		_x : 0,
		_y : 0,
		ox : 0,
		oy : 0
	};
	bl2[i] = {
		index : choose(0, 1, 2),
		_x : 0,
		_y : 0,
		ox : 0,
		oy : 0
	};
}

for(i=0; i<128; i+=1) {
    bl1[i].ox = 3*(-4 + 0.5 + i - floor(i/8)*8);
    bl1[i].oy = 3*(-8 + 0.5 + floor(i/8));
    bl1[i]._x = lx + bl1[i].ox * cos(degtorad(image_angle)) + bl1[i].oy * sin(degtorad(image_angle));
    bl1[i]._y = ly - bl1[i].ox * sin(degtorad(image_angle)) + bl1[i].oy * cos(degtorad(image_angle));
    
    bl2[i].ox = 3*(-4 + 0.5 + i - floor(i/8)*8) + random_range(-1, 1);
    bl2[i].oy = 3*(-8 + 0.5 + floor(i/8)) + random_range(-1, 1);
    bl2[i]._x = rx + (3*8 + bl2[i].ox) * cos(degtorad(image_angle)) + (-3*4 + bl2[i].oy) * sin(degtorad(image_angle));
    bl2[i]._y = ry - (3*8 + bl2[i].ox) * sin(degtorad(image_angle)) + (-3*4 + bl2[i].oy) * cos(degtorad(image_angle));
}

for(i=128; i<256; i+=1) {
    t = (i-128)/128;
    bl1[i]._x = random_range(-1, 1) + (1-t)*((1-t)*lx + t*(lx + eyes[0].x)/2) + t*((1-t)*(lx + eyes[0].x)/2 + t*eyes[0].x);
    bl1[i]._y = random_range(-1, 1) + (1-t)*((1-t)*ly + t*((ly + eyes[0].y)/2 + 200)) + t*((1-t)*((ly + eyes[0].y)/2 + 200) + t*eyes[0].y);
    
    bl2[i]._x = random_range(-1, 1) + (1-t)*((1-t)*rx + t*(rx + eyes[1].x)/2) + t*((1-t)*(rx + eyes[1].x)/2 + t*eyes[1].x);
    bl2[i]._y = random_range(-1, 1) + (1-t)*((1-t)*ry + t*((ry + eyes[1].y)/2 + 200)) + t*((1-t)*((ry + eyes[1].y)/2 + 200) + t*eyes[1].y);
}