direction += as;
if direction < 0 {direction += 360;}
if direction >= 360 {direction -= 360;}
if (disappear) {
    if (image_xscale > 0) {
        image_xscale -= 0.05;
        image_yscale = image_xscale;
    } else instance_destroy();
}