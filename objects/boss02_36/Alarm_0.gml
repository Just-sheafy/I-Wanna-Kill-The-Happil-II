if instance_exists(player) {
    image_angle = point_direction(x, y, player.x, player.y);
    var zx = instance_create_depth(x, y, -1, Boss02_37);
    zx.direction = image_angle;
    zx.speed = 6;
}
alarm[1] = 75;