if ((x <= -32 and hspeed < 0) or (x >= 832 and hspeed > 0)) instance_destroy();

d += 8;
image_angle = direction;
image_alpha = min(1, image_alpha+0.1);