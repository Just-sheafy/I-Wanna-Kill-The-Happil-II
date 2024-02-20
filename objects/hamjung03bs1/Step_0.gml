if d {
    image_angle -= 1.9;
    if e < 1 {
        image_xscale += 0.02;
        image_yscale += 0.02;
        e += 0.02;
    }
}
if c == 0 {
    if !b {
        if a < 1 {
            image_xscale += 0.0005;
            image_yscale += 0.0005;
            a += 0.01;
        } else {
            b = 1;
            c = 300;
        }
    } else {
        if a > 0 {
            image_xscale -= 0.0005;
            image_yscale -= 0.0005;
            a -= 0.01;
        } else {
            b = 0;
            c = 300;
        }
    }
}
if c > 0 {c -= 1;}

image_angle -= 0.1;