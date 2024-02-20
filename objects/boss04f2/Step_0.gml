if (patt == 21) {
    appear_r += 36;
    with(Boss04F3) {
        if (point_distance(x, y, Boss04F2.x, Boss04F2.y) <= Boss04F2.appear_r) {
            instance_destroy();
            var temp = instance_create_depth(x, y, -2, Boss04F4);
            temp.sprite_index = sprFruitBw;
            temp.image_xscale = 0; temp.image_yscale = 0;
        }
    }
} else if (patt == 22) {
    disappear_r += 36;
    with(Boss04F4) {
        if (point_distance(x, y, Boss04F2.x, Boss04F2.y) <= Boss04F2.disappear_r) {
            disappear = true;
        }
    }
}

if (disappear_r >= 1200) {
    instance_destroy();
    with(Boss04F4) instance_destroy();
}