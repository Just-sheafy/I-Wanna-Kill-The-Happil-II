var i, temp;

if (patt == 0) {
    for(i=0; i<12; i+=1) {
        temp = instance_create_depth(x, y, -4, fruit);
        temp.sprite_index = sprite_index;
        temp.speed = 8;
        temp.direction = 30*i;
        temp.as = 0.5;
    }
    
    patt += 1;
    alarm[0] = 12;
} else if (patt == 1) {
    for(i=0; i<12; i+=1) {
        temp = instance_create_depth(x, y, -4, fruit);
        temp.sprite_index = sprite_index;
        temp.speed = 8;
        temp.direction = 30*i+15;
        temp.as = 0.5;
    }
    
    patt += 1;
    alarm[0] = 5;
} else if (patt == 2) {
    for(i=0; i<12; i+=1) {
        temp = instance_create_depth(x, y, -4, fruit);
        temp.sprite_index = sprite_index;
        temp.speed = 16;
        temp.direction = 30*i;
        temp.as = -1;
    }
    
    patt += 1;
    alarm[0] = 20;
} else if (patt == 3) {
    for(i=0; i<12; i+=1) {
        temp = instance_create_depth(x, y, -4, fruit);
        temp.sprite_index = sprite_index;
        temp.speed = 8;
        temp.direction = 30*i+15;
        temp.as = 0.5;
    }
    
    patt += 1;
    alarm[0] = 11;
} else {
    for(i=0; i<12; i+=1) {
        temp = instance_create_depth(x, y, -4, fruit);
        temp.sprite_index = sprite_index;
        temp.speed = 16;
        temp.direction = 30*i;
        temp.as = -1;
    }
    
    patt = 0;
    if (dist) instance_destroy();
}