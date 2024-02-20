alarm[0] = 0;
dest = 1;
if instance_exists(player) {
    gravity_direction=point_direction(x, y, player.x, player.y);
    gravity = 0.5;
}