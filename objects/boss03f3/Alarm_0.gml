var i, zx;

if a < 50 {
    zx = instance_create_depth(x, y, -4, fruit);
    zx.sprite_index = sprFruitWh;
    zx.direction = a*13;
    zx.speed = 6;
    zx = instance_create_depth(x, y, -4, fruit);
    zx.sprite_index = sprFruitWh;
    zx.direction = a*13+180;
    zx.speed = 6;
    a += 1;
    alarm[0] = 1;
} else {
    instance_destroy();
    for(i=0; i<18; i+=1) {
        zx = instance_create_depth(x, y, -4, fruit);
        zx.sprite_index = sprFruitWh;
        zx.direction = 20*i;
        zx.speed = 8;
    }
}