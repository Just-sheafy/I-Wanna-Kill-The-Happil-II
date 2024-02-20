image_xscale = 0.05;
image_yscale = 0.05;
var zx = instance_create_depth(x, y, depth, Boss03_53);
zx.sid = id;
if instance_exists(player) {
    direction = point_direction(x, y, player.x, player.y);
} else {
    direction = point_direction(x, y, 0, 0);
}
gravity_direction = direction;
speed = 1;
gravity = 0.1;