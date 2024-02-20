if instance_exists(player) {
    var zx = instance_create_depth(x, y, -8, Boss01_D2);
    zx.image_index = 2;
    instance_create_depth(0, 0, -7, Boss01_D);
    image_index = 0;
    alarm[1] = 120;
}