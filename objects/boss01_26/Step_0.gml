if image_xscale < scale {
    image_xscale += scale/20;
    image_yscale = image_xscale;
} else {
    image_xscale = scale;
    image_yscale = scale;
}
image_angle = direction;