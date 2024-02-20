if !instance_exists(player) {exit;}
var zx = instance_create_depth(player.x, player.y, -3, Boss03_60);
zx.a = 1;
alarm[4] = 50;