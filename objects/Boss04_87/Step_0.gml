image_angle += angle_spd;
image_alpha = max(image_alpha-0.03, 0);
if (image_alpha <= 0) instance_destroy();