image_angle -= angle_speed;
if image_angle < 0 {image_angle += 360;}

d += d_speed;
image_xscale = 2 * (1 + 0.1*sin(degtorad(d)));
image_yscale = image_xscale;