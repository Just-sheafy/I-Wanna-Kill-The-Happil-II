if !instance_exists(player) {exit;}
with(player) {depth = -16;}
var zx = instance_create_depth(0, 0, -10, dark4);
zx.alarm[0] = 50;
zx.c = 3;