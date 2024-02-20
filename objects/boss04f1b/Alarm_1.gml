var temp = instance_create_depth(random_range(0, 800), 0, -4, fruit);
temp.sprite_index = sprFruitW;
temp.vspeed = random_range(4, 6);

temp = instance_create_depth(random_range(0, 800), 608, -4, fruit);
temp.sprite_index = sprFruitGr;
temp.vspeed = -random_range(4, 6);

alarm[1] = 5;