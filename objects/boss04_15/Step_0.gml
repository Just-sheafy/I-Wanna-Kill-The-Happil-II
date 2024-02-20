image_angle = direction;
if ((vspeed > 0 and y >= room_height+48) or (vspeed < 0 and y <= -48)) {instance_destroy();}