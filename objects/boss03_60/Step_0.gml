if k < 90 {k += 1.8;}
if !shoot {
    image_alpha = sin(degtorad(k));
    image_angle = 360*sin(degtorad(k));
    image_xscale = 1-0.5*sin(degtorad(k));
    image_yscale = 1-0.5*sin(degtorad(k));
} else {
    if image_alpha > 0 {
        image_xscale += 0.05;
        image_yscale += 0.05;
        image_alpha -= 0.1;
    } else {
        instance_destroy();
    }
}