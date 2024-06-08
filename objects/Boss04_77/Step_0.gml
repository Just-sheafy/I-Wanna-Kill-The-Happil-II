xx += hs;
yy += vs;
if (xx <= 0 or xx >= room_width/2-48) { xx -= hs; hs *= -1; }
if (( vs >= 0 && yy >= room_height*3/2) || (vs <= 0 && yy <= -room_height/2)) { instance_destroy(); }

angle += as;
image_angle = angle;