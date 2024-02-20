image_speed = 0;
image_xscale = 2;
image_yscale = 2;
alarm[0] = 50;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);
else direction = point_direction(x, y, 0, 0);
speed = 4;