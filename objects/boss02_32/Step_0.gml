image_alpha -= 0.03;
direction += a;
image_angle = direction;
if image_alpha <= 0 {instance_destroy();}