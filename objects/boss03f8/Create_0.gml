var i, zx;

patt = 0;
if (instance_exists(player))
	a = point_direction(x, y, player.x, player.y);
else
	a = point_direction(x, y, 0, 0);
// a = random(9);
for(i=0; i<40; i+=1) {
    zx = instance_create_depth(x, y, -4, fruit);
    zx.sprite_index = sprFruitV;
    zx.direction = a+9*i;
    zx.speed = 12;
}
alarm[0] = 15;