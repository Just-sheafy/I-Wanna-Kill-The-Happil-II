if !instance_exists(player) {exit;}

var i, zx;

instance_destroy();
for(i=0; i<8; i+=1) {
    zx = instance_create_depth(x, y, -4, fruit);
    zx.direction = point_direction(x, y, player.x, player.y)+45*i;
    zx.speed = 5;
    zx.sprite_index = sprite_index;
}