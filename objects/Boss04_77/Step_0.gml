xx += hs;
yy += vs;
if (xx <= 0 or xx >= room_width/2-48) { xx -= hs; hs *= -1; }
if (yy >= room_height*3/2) { instance_destroy(); }

angle += as;
image_angle = angle;