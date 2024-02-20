var temp, angle;

angle = random(360);

temp = instance_create_depth(400+510*cos(degtorad(angle)), 304-510*sin(degtorad(angle)), depth-1, Boss04_20);
temp.speed = random_range(1, 3);
temp.direction = point_direction(temp.x, temp.y, 400, 304);
temp.gravity = 0.5;
temp.gravity_direction = point_direction(temp.x, temp.y, 400, 304);

alarm[0] = 2;