if (point_distance(x, y, Boss04_19.x, Boss04_19.y) < 200) t = true;
if (t) {
    if (image_xscale > 0) {
        image_xscale -= 0.08;
        image_yscale = image_xscale;
    } else instance_destroy();
}