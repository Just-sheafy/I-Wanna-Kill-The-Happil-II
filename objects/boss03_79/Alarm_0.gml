if (!instance_exists(player)) exit;

var zx = instance_create_depth(x, y, -1, Boss03_72);
zx.direction = point_direction(x, y, player.x, player.y);
zx.speed = 8;
alarm[0] = 8;