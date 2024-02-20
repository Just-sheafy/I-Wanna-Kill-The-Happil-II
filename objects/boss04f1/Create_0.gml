depth = 1;
image_speed = 0;
image_yscale = -1;

y = 608-y;

hx1 = x-154;
hy1 = y-314;
hx2 = x-30;
hy2 = y-315;

fruit1 = -1;
fruit2 = -1;
fruit3 = -1;
fruit4 = -1;

vertex_x = ds_list_create();
vertex_y = ds_list_create();

ds_list_add(vertex_x, -50); ds_list_add(vertex_x, -100); ds_list_add(vertex_x, -50);
ds_list_add(vertex_x, 50); ds_list_add(vertex_x, 100); ds_list_add(vertex_x, 50);
ds_list_add(vertex_y, 50*sqrt(3)); ds_list_add(vertex_y, 0); ds_list_add(vertex_y, -50*sqrt(3));
ds_list_add(vertex_y, -50*sqrt(3)); ds_list_add(vertex_y, 0); ds_list_add(vertex_y, 50*sqrt(3));

var temp = instance_create_depth(736, 608-64, -50, objTime1);
temp.time = 2311;
temp.time_max = temp.time;

if (world.var_temp == 0 && world.items[0] && world.BH_ok) {
	temp = instance_create_depth(272, 24, 350, Boss04_52);
	temp.image_angle = -28;
	temp.move = false;
	
	temp = instance_create_depth(400, 32, 350, Boss04_52);
	temp.image_index = 1;
	temp.image_angle = 39;
	temp.move = false;
}

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(3, world.hp_before);
	else zx.hp = 3;
	zx.hpm = 3;
	if (zx.hp < zx.hpm) {
		zx = instance_create_layer(400, 304, "Player", objHealthItem1);
		zx.time = 250;
	}
	world.hp_before = -1;
}

if (world.var_temp == 0) a = 0;
else a = -1;
not_check = false;

alarm[0] = 50;
alarm[1] = 2420;

patt = 0;