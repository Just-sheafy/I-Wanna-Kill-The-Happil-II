var temp;

if (y >= room_height / 2) {
    temp = instance_create_depth(x, room_height, -9, Boss04_25);
    temp.vspeed = -sp;
} else {
    temp = instance_create_depth(x, 0, -9, Boss04_25);
    temp.image_angle = 180;
    temp.vspeed = sp;
    temp.gravity_direction = 90;
}

alarm[0] = 4;