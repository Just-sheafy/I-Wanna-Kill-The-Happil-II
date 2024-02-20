var zx = instance_create_depth(x, y, -3, Boss03_57);
if (instance_exists(player))
	zx.direction = point_direction(x, y, player.x, player.y);
else
	zx.direction = point_direction(x, y, 0, 0);
zx.speed = 6;
zx.gravity_direction = zx.direction;
zx.gravity = 0.2;
zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 20;
alarm[0] = 250;