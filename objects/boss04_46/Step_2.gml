if (sid == -1 or !instance_exists(sid)) { instance_destroy(); exit; }

d += 3;
x = sid.x + ox * cos(degtorad(sid.image_angle)) + (oy + 4*sin(degtorad(d))) * sin(degtorad(sid.image_angle));
y = sid.y - ox * sin(degtorad(sid.image_angle)) + (oy + 4*sin(degtorad(d))) * cos(degtorad(sid.image_angle));
image_angle = sid.image_angle;