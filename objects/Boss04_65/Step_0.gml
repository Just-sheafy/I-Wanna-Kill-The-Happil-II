direction += direction_speed;
image_angle = direction;
image_xscale = min(image_xscale+0.005, 1/2);
image_yscale = min(image_yscale+0.005, 1/2);

if (outside and (x <= -128 or x >= room_width + 128 or y <= -128 or y >= room_height + 128)) instance_destroy();