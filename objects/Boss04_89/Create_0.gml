var temp;

if (!instance_exists(player)) {
	temp = instance_create_depth(384 + 17, 544 + 23, -2, player);
	if (world.var_temp != 0) {
		temp.xscale = -1;
		temp.frozen = true;
	}
}

num = 0;
if (world.var_temp != 0) {
	temp = instance_create_depth(192+17, 544+23, -3, Boss04_90);
	temp.speed = random_range(6, 10);
	temp.direction = random_range(90, 180);
	repeat(2) {
		temp = instance_create_depth(192+17, 544+23, -3, Boss04_90);
		temp.sprite_index = sprFoot;
		temp.speed = random_range(6, 10);
		temp.direction = random_range(90, 180);
		temp = instance_create_depth(192+17, 544+23, -3, Boss04_90);
		temp.sprite_index = sprArm;
		temp.speed = random_range(6, 10);
		temp.direction = random_range(90, 180);
	}
	
	world.var_temp = 0;
	num = 20;
	alarm[0] = 1;
}