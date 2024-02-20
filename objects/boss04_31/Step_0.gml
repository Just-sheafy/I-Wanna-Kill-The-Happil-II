if (instance_exists(player)) {
    x_prev += (player.x-x_prev)/10;
    y_prev += (player.y-y_prev)/10;
}
if (phase == 0) {
    t += 2;
    t = t mod 64;
    tt += 1;
    tt = tt mod 360;
} else if (phase == 1) {
    var i;
    
    t += 1;
    tt += 1.5;
    if (t >= 100) {t -= 100; tt -= 8;}
    
    for(i=0; i<12; i+=1) {
        col[i] = make_color_rgb(floor(255*scr_ease_bump(i/12+tt/48)), floor(255*scr_ease_bump((i-4)/12+tt/48)),
            floor(255*scr_ease_bump((i+4)/12+tt/48)));
    }
    col[12] = col[0];
} else {
    t += 2;
    tt += 1;
    if (t >= 128) {t -= 128;}
}

if (active) alpha = min(1, alpha+0.01);
else alpha = max(0, alpha-0.04);

if (move) {
    var xxx, yyy;
    
    xxx = Boss04_1.xx - room_width/2;
    yyy = Boss04_1.yy - room_height/2;
    x += (room_width/2 + xxx*125/(Boss04_1.zz+sqrt(xxx*xxx+yyy*yyy)/8+125)-x)/50;
    y += (room_height/2 + yyy*125/(Boss04_1.zz+sqrt(xxx*xxx+yyy*yyy)/8+125)-y)/50;
}