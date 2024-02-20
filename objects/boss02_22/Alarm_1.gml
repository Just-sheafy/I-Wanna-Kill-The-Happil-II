if !instance_exists(player) {exit;}
a = 2;
var zx = instance_create_depth(x, y, -2, Boss02_23);
zx.direction = point_direction(x, y, player.x, player.y);
zx.speed = 8;