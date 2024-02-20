image_angle += 8*sign(hspeed);
if x < -150 and hspeed < 0 {instance_destroy();}
if x > room_width+150 and hspeed > 0 {instance_destroy();}
image_alpha = random_range(0.2, 0.8);