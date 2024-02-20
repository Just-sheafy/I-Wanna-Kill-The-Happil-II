var i, a;

ang += 11;
if ang >= 24 {ang -= 24;}
for(i=0; i<15; i+=1) {
    a = instance_create_depth(x, y, -4, fruit);
    a.sprite_index = sprFruitG;
    a.direction = 24*i+ang;
    a.speed = 6;
}
alarm[0] = 49;