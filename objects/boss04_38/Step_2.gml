if (sid == -1 || !instance_exists(sid)) { instance_destroy(); exit; }

x = sid.x - 48*sin(degtorad(sid.image_angle));
y = sid.y - 48*cos(degtorad(sid.image_angle));
image_angle = sid.image_angle;