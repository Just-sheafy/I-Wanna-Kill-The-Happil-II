var i, zx;

instance_destroy();
for(i=0; i<12; i+=1) {
    zx = instance_create_depth(x, y, -4, fruit);
    zx.sprite_index = sprFruitWh;
    zx.direction = 30*i;
    zx.speed = 6;
    zx.alarm[11] = 2;
}