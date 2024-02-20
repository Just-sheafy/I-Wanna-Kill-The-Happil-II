if (sid == -1 || !instance_exists(sid) || (!not_recover and !instance_exists(player))) { instance_destroy(); exit; }
if (not_recover) exit;

var xx, yy;

x = sid.x + ox;
y = sid.y + oy;
xx = buffer_x + lengthdir_x(2.2, point_direction(player.x, player.y, x, y));
yy = buffer_y + lengthdir_y(2.2, point_direction(player.x, player.y, x, y));
player.x += round(xx);
player.y += round(yy);
buffer_x = xx - round(xx);
buffer_y = yy - round(yy);