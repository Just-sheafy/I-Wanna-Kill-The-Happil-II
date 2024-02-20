var i, temp;

for(i=0; i<10; i+=1) {
    temp = instance_create_depth(x, y, -4, fruit);
    temp.sprite_index = sprite_index;
    temp.speed = 12;
    temp.direction = 36*i+90;
    temp.as = as;
}

instance_destroy();