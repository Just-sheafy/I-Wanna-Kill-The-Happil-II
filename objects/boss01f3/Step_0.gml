var i, zx;

a += 1;
if (a mod 3 == 0) or !instance_exists(player) {exit;}
for(i=0; i<2; i+=1) {
    zx = instance_create_layer(x, y, "Player", Boss01F4);
    zx.direction = 360/2*i+random(360/2);
    zx.speed = random_range(4, 8);
	zx.sp = zx.speed+4;
    zx.friction = 0.2;
}