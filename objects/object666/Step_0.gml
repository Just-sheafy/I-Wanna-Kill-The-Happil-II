if instance_exists(Boss04_bef) {
    image_alpha = alpha*random_range(0.6, 1);
} else if (patt == 0) {
    d += 2;
    y = oy + 16 * sin(degtorad(d));
    image_alpha = 1;
} else {
    image_alpha = alpha*random_range(0.6, 1);
    if (d < 90) d += 2;
    image_angle = 180*sin(degtorad(d));
    if (patt >= 3) {
        if (rat < 1) rat += 0.01;
    }
    if (patt >= 5) {
        if (alpha > 0) {
            image_xscale += 0.01;
            image_yscale += 0.01;
            alpha -= 0.02;
        } else instance_destroy();
    }
}