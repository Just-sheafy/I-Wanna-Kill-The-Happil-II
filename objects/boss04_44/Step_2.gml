if (sid == -1 or !instance_exists(sid)) { instance_destroy(); exit; }

x = sid.x + ox * cos(degtorad(sid.image_angle)) + oy * sin(degtorad(sid.image_angle));
y = sid.y - ox * sin(degtorad(sid.image_angle)) + oy * cos(degtorad(sid.image_angle));
image_angle = sid.image_angle + angle;