if (time < time_max) {
    scale = 2*sin(degtorad(90*time/time_max));
    time += 1;
} else scale = 2;

image_xscale = scale;
image_yscale = scale;