if (sid == -1 or !instance_exists(sid)) instance_destroy();
else {
    x = sid.x; y = sid.y;
    image_angle = sid.image_angle + 180;
}