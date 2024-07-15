image_angle += angle_speed;

d += d_speed;
image_xscale = 2 * (1 + 0.1*sin(degtorad(d)));
image_yscale = image_xscale;