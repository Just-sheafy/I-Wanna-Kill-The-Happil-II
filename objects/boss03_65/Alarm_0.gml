var i, zx;

for(i=1; i<25; i+=1) {
    zx = instance_create_depth(32*i, y, -5, Boss03_65);
    zx.alarm[0] = 0;
}