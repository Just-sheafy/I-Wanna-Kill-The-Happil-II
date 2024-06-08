with(Boss01_D) {instance_destroy();}
var zx = instance_create_depth(0, 0, -7, Boss01_D);
zx.alarm[0] = 240-120*b;
zx = instance_create_depth(x, y, -8, Boss01_D2);
zx.alarm[1] = 240-120*b;
zx.image_index = 1;
room_speed = global.ROOM_SPEED / 2;