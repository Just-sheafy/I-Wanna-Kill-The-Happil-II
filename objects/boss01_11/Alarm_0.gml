if !instance_exists(player) {exit;}
var i, j, a;

for(j=0; j<4; j+=1) {
    for(i=-2; i<3; i+=1) {
        a = instance_create_depth(x, y, -4, fruit);
        a.sprite_index = sprFruitBw;
        a.direction = point_direction(x, y, player.x, player.y)+j*90+12*i;
        if a.direction >= 360 {a.direction -= 360;}
        a.speed = 6;
    }
}
alarm[0] = 74;