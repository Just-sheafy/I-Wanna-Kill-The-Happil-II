if !instance_exists(player) {exit;}

var a = instance_create_depth(x, y, -4, fruit);
a.sprite_index = sprFruitGr;
a.direction = point_direction(x, y, player.x, player.y);
a.speed = 8;
alarm[3] = 60;