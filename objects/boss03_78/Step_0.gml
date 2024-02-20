if b == 0 {
    if image_alpha < 1 {
        image_alpha += 0.05;
        image_xscale -= 0.05;
        image_yscale -= 0.05;
    } else {
        b = 1;
        alarm[0] = 20;
    }
} else if b == 2 {
    if image_alpha > 0 {
        image_alpha -= 0.05;
        image_xscale += 0.05;
        image_yscale += 0.05;
    } else {
        instance_destroy();
    }
}