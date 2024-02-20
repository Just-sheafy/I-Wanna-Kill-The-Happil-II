if (sid == -1 || !instance_exists(sid)) { instance_destroy(); exit; }

x = sid.x+ox;
y = sid.y+oy;
image_alpha = sid.image_alpha * alpha;