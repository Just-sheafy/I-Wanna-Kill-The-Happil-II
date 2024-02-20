if a == 0 {
    if image_xscale < 1.2 {
        image_xscale += 0.2;
        image_yscale += 0.2;
    } else {a = 1;}
}
if a == 1 {
    if s > 0 {
        s -= 0.0025;
        d += 20;
        image_xscale = 1+s*cos(degtorad(d));
        image_yscale = 1+s*cos(degtorad(d));
    } else {
        image_xscale = 1;
        image_yscale = 1;
        a = 2;
    }
}