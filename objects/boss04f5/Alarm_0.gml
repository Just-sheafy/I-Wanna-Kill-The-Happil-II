var i, temp;

if (patt < 5) {
    for(i=0; i<4; i+=1) {
        temp = instance_create_depth(x, y, -4, fruit);
        temp.sprite_index = sprite_index;
        temp.speed = 8;
        temp.direction = 90*i;
        temp.as = as;
        if (instance_exists(player))
            temp.direction += point_direction(x, y, player.x, player.y);
    }
    
    patt += 1;
    alarm[0] = 6;
} else patt = 0;