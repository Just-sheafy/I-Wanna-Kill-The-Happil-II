var temp;

if (random(1) > 1/4 + mode/4) {
	temp = instance_create_depth(832, random_range(150, 608-150), -3, water);
	temp.image_xscale = random_range(1, 2);
	temp.image_yscale = temp.image_xscale;
	temp.x -= 16*temp.image_xscale;
	temp.y -= 16*temp.image_yscale;
	temp.hspeed = random_range(-3, -1.5);
} else {
	temp = instance_create_depth(832, random_range(150, 608-150), 0, Boss04_85);
	temp.hspeed = random_range(-4, -1);
	temp.image_xscale = random_range(1, 2);
	temp.x -= 16*temp.image_xscale;
	temp.y -= 8*temp.image_yscale;
	temp.bounce = false;
}

alarm[0] = 20;