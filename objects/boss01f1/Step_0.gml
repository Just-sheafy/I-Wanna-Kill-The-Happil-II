var i, zx;

a = !a;
if a or !instance_exists(player) {exit;}
for(i=0; i<2; i+=1) {
    zx = instance_create_layer(x, y, "Player", Boss01F2);
    zx.direction = 360/2*i+random(360/2);
    zx.speed = random_range(4, 8);
	zx.sp = zx.speed+2;
    zx.friction = 0.2;
}