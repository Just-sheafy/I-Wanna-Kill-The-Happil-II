radius = 750;
angle = 60;
// angle = random(360);
angle_speed = 0;
angle2 = 0;
angle_dir = choose(1, -1);

num1 = instance_create_depth(400+lengthdir_x(600, angle), 304+lengthdir_y(600, angle), -5, Boss04_67);
num2 = instance_create_depth(400+lengthdir_x(600, angle+120), 304+lengthdir_y(600, angle+120), -5, Boss04_67);
num3 = instance_create_depth(400+lengthdir_x(600, angle+240), 304+lengthdir_y(600, angle+240), -5, Boss04_67);
with(Boss04_67) { image_index = 1; image_xscale = 3; image_yscale = 3; }

patt = 0;
alarm[0] = 50;