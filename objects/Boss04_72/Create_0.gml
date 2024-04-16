image_speed = 20 / 50;

scale = 50;
radius = 216;
angle = 0;
angle_dir = choose(1, -1);
time = 0;
destroy = false;
destroy_time = 0;
enable = true;

xx = (angle_dir == 1)? room_width+180 : -180;
yy = room_height/2;
num1 = instance_create_depth(x, y-radius, 10, Boss04_67);
num1.image_index = 2;
num1.image_xscale = 5;
num1.image_yscale = 5;
num2 = instance_create_depth(x, y+radius, 10, Boss04_67);
num2.image_index = 2;
num2.image_xscale = 5;
num2.image_yscale = 5;
num2.image_angle = 180;