if (disappear) {
    if (image_xscale > 0) {
        image_xscale -= 0.2*scale;
        image_yscale = image_xscale;
    } else instance_destroy();
    exit;
}

if (image_xscale < scale) {
    image_xscale += 0.2*scale;
    image_yscale = image_xscale;
}