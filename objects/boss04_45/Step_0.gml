d += 3;
if (d >= 180) instance_destroy();
image_xscale = 0.5 + (scale-0.5) * sin(degtorad(d));
image_yscale = image_xscale;
image_alpha = sin(degtorad(d));