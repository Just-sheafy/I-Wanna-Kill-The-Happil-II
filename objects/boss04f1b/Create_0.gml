var i, temp;

depth = 201;
hx = x+120;
hy = y+15;
mx = x+80;
my = y-170;

star_x = ds_list_create();
star_y = ds_list_create();
triangle_x = ds_list_create();
triangle_y = ds_list_create();
square_x = ds_list_create();
square_y = ds_list_create();
pentagon_x = ds_list_create();
pentagon_y = ds_list_create();
hexagon_x = ds_list_create();
hexagon_y = ds_list_create();

for(i=0; i<5; i+=1) {
    ds_list_add(star_x, 100*cos(degtorad(90+144*i)));
    ds_list_add(star_y, -100*sin(degtorad(90+144*i)));
}
for(i=0; i<3; i+=1) {
    ds_list_add(triangle_x, 100*cos(degtorad(90+120*i)));
    ds_list_add(triangle_y, -100*sin(degtorad(90+120*i)));
}
for(i=0; i<4; i+=1) {
    ds_list_add(square_x, 100*cos(degtorad(45+90*i)));
    ds_list_add(square_y, -100*sin(degtorad(45+90*i)));
}
for(i=0; i<5; i+=1) {
    ds_list_add(pentagon_x, 100*cos(degtorad(90+72*i)));
    ds_list_add(pentagon_y, -100*sin(degtorad(90+72*i)));
}
for(i=0; i<6; i+=1) {
    ds_list_add(hexagon_x, 100*cos(degtorad(90+60*i)));
    ds_list_add(hexagon_y, -100*sin(degtorad(90+60*i)));
}

temp = instance_create_depth(736, 64, -50, objTime1);
temp.time = 2220;
temp.time_max = temp.time;

if (global.practice < 0 && world.var_temp == 0 && world.items[0] && world.BH_ok) {
	temp = instance_create_depth(480, 568, 250, Boss04_52);
	temp.image_angle = -6;
	temp.move = false;
	
	temp = instance_create_depth(256, 576, 250, Boss04_52);
	temp.image_index = 1;
	temp.image_angle = -34;
	temp.move = false;
}

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(3, world.hp_before);
	else zx.hp = 3;
	zx.hpm = 3;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(400, 432, "Player", objHealthItem1);
		zx.time = 250;
	}
	world.hp_before = -1;
}

if (world.var_temp == 0) a = 0;
else a = -1;
not_check = false;

alarm[2] = 50;
alarm[3] = 2275;

patt = 0;

// Practice
if (global.practice >= 0) {
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}