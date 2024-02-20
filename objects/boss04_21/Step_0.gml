if (image_xscale < 120) {
    image_xscale += 2;
    image_yscale = image_xscale;
    image_alpha -= 0.01;
} else instance_destroy();