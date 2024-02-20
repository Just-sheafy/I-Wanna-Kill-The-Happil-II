if (x < -100 and hspeed < 0) instance_destroy();

if (!instance_exists(player)) {
    image_index = 0; alarm[0] = 0; alarm[1] = 0; exit;
}