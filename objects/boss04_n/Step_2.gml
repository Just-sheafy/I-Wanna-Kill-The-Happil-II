if !instance_exists(sid) {instance_destroy(); exit;}
if (sid.object_index == Boss04_1) {
    var xxx, yyy;
    
    xxx = sid.xx - room_width/2;
    yyy = sid.yy - room_height/2;
    x = room_width/2 + xxx*125/(sid.zz+sqrt(xxx*xxx+yyy*yyy)/8+125)+ox;
    y = room_height/2 + yyy*125/(sid.zz+sqrt(xxx*xxx+yyy*yyy)/8+125)+oy;
} else if (sid.object_index == Boss04_2) {
    x = sid.x - 36*cos(degtorad(sid.image_angle+45))+ox;
    y = sid.y + 36*sin(degtorad(sid.image_angle+45))+oy;
} else if (sid.object_index == Boss04_3) {
    x = sid.x + 36*cos(degtorad(sid.image_angle-45))+ox;
    y = sid.y - 36*sin(degtorad(sid.image_angle-45))+oy;
} else {
    x = sid.x+ox;
    y = sid.y+oy;
}