if instance_exists(Boss01_35) {
    x = Boss01_35.x;
    y = Boss01_35.y;
    image_angle = Boss01_35.image_angle;
    image_alpha = Boss01_35.image_alpha;
    
    if (Boss01_35.pink_available)
        pink_alpha = min(1, pink_alpha+0.1);
    else pink_alpha = max(0, pink_alpha-0.1);
    if (Boss01_35.yellow_available)
        yellow_alpha = min(1, yellow_alpha+0.1);
    else yellow_alpha = max(0, yellow_alpha-0.1);
    if (Boss01_35.blue_available)
        blue_alpha = min(1, blue_alpha+0.1);
    else blue_alpha = max(0, blue_alpha-0.1);
    if (Boss01_35.red_available)
        red_alpha = min(1, red_alpha+0.1);
    else red_alpha = max(0, red_alpha-0.1);
} else {
    instance_destroy();
}