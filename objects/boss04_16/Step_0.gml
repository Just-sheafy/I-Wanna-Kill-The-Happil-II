if (patt <= 6) {
    gravity += 0.1;
    if (instance_exists(player)) gravity_direction = point_direction(x, y, player.x, player.y);
    else gravity_direction = point_direction(x, y, 0, 0);
    image_angle += 12;
} else if (patt <= 14) {
    if (instance_exists(player)) {
        x += round((player.x-x)/5)/2;
        y += round((player.y-y)/5)/2;
    } else {
        x += round((-x)/5)/2;
        y += round((-y)/5)/2;
    }
}