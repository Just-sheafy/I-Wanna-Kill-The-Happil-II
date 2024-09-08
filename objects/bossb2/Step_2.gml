if (instance_exists(sid)) {
	depth = sid.depth - 1;
    if (sid.object_index == Boss04_2) {
        x = sid.x - 36*cos(degtorad(sid.image_angle+45));
        y = sid.y + 36*sin(degtorad(sid.image_angle+45));
    } else if (sid.object_index == Boss04_3) {
        x = sid.x + 36*cos(degtorad(sid.image_angle-45));
        y = sid.y - 36*sin(degtorad(sid.image_angle-45));
    } else instance_destroy();
} else instance_destroy();

t += 1 / length;