d += 10;
y += cos(degtorad(d)) * 0.5;

if (type == 3) {
    if (instance_exists(player))
        angle = point_direction(x, y, player.x, player.y) + 180 - 45;
    else
        angle = point_direction(x, y, 0, 0) + 180 - 45;
}

angle = (angle mod 360);
image_angle = (image_angle mod 360);

if (type != 4) {
    if (angle >= image_angle) {
        if (angle - image_angle <= 360 - (angle - image_angle)) {
            if (angle - image_angle <= 3) image_angle = angle;
        } else {
            if (360 - (angle - image_angle) <= 3) image_angle = angle;
        }
    } else {
        if (image_angle - angle <= 360 - (image_angle - angle)) {
            if (image_angle - angle <= 3) image_angle = angle;
        } else {
            if (360 - (image_angle - angle) <= -3) image_angle = angle;
        }
    }
    
    if (abs(angle-image_angle) <= min(abs(angle-image_angle-360), abs(angle-image_angle+360)))
        image_angle += (angle-image_angle)/8;
    else if (abs(angle-image_angle-360) <= abs(angle-image_angle+360))
        image_angle += (angle-image_angle-360)/8;
    else
        image_angle += (angle-image_angle+360)/8;
}

if (type == 0 or type == 1 or type == 6) {
    if (type == 6) {
        if (instance_exists(player)) xx = player.x; else xx = x;
    }
    x += floor((xx-x)/10);
    y += floor((yy-y)/10);
}

if (type == 4) {
    pos_time += 4;
    angle_time += 8;
    
    x -= 15*sin(degtorad(pos_time));
    y += 6*cos(degtorad(pos_time));
    image_angle += 4*cos(degtorad(angle_time));
}