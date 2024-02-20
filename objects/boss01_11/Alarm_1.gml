var i, a;

ang = random(45);
for(i=0; i<8; i+=1) {
    a = instance_create_depth(x, y, -4, fruit);
    a.sprite_index = sprFruitBw;
    a.direction = 45*i+ang;
    a.as = 0.5;
    a.speed = 6;
    a = instance_create_depth(x, y, -4, fruit);
    a.sprite_index = sprFruitBw;
    a.direction = 45*i+ang;
    a.as = -0.5;
    a.speed = 6;
}
alarm[1] = 144;