if instance_exists(Boss01_35) {
    x = Boss01_35.x;
    y = Boss01_35.y;
    image_angle = angle;
    image_alpha = Boss01_35.image_alpha;
} else {
    instance_destroy();
}