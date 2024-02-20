if active {
    d += 6*sign(image_xscale);
    angle += 8*sign(image_xscale);
    image_angle = 15*sin(degtorad(d));
} else {
    d = 0;
    angle = 0;
    image_angle = 0;
}