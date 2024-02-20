var temp = instance_create_depth(mx, my, -4, fruit);
temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG, sprFruitB);
temp.speed = random_range(4, 6);
temp.direction = random_range(
    point_direction(mx, my, 576, 0),
    point_direction(mx, my, 576, 608));

alarm[0] = 5;