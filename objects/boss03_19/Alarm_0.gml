var i, zx;

if a < 360 {
    for(i=0; i<4; i+=1) {
        zx = instance_create_depth(x, y, -1, Boss03_20);
        zx.direction = 90*i+a;
        zx.speed = 6;
    }
    a += 10;
    alarm[0] = 4;
}