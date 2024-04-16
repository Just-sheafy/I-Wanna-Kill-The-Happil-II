var i, t, lx, ly, rx, ry, _ox, _oy;

lx = x - 3*8 * cos(degtorad(image_angle)) - 3*4 * sin(degtorad(image_angle));
ly = y + 3*8 * sin(degtorad(image_angle)) - 3*4 * cos(degtorad(image_angle));
rx = x + 3*8 * cos(degtorad(image_angle)) - 3*4 * sin(degtorad(image_angle));
ry = y - 3*8 * sin(degtorad(image_angle)) - 3*4 * cos(degtorad(image_angle));

for(i=0; i<128; i+=1) {
    _ox = bl1[i].ox + random_range(-1, 1);
    _oy = bl1[i].oy + random_range(-1, 1);
    bl1[i]._x = lx + _ox * cos(degtorad(image_angle)) + _oy * sin(degtorad(image_angle));
    bl1[i]._y = ly - _ox * sin(degtorad(image_angle)) + _oy * cos(degtorad(image_angle));
    
    _ox = bl2[i].ox + random_range(-1, 1);
    _oy = bl2[i].oy + random_range(-1, 1);
    bl2[i]._x = rx + _ox * cos(degtorad(image_angle)) + _oy * sin(degtorad(image_angle));
    bl2[i]._y = ry - _ox * sin(degtorad(image_angle)) + _oy * cos(degtorad(image_angle));
}

for(i=128; i<256; i+=1) {
    t = (i-128)/128;
    bl1[i]._x = random_range(-1, 1) + (1-t)*((1-t)*lx + t*(lx + eyes[0].x)/2) + t*((1-t)*(lx + eyes[0].x)/2 + t*eyes[0].x);
    bl1[i]._y = random_range(-1, 1) + (1-t)*((1-t)*ly + t*((ly + eyes[0].y)/2 + 200)) + t*((1-t)*((ly + eyes[0].y)/2 + 200) + t*eyes[0].y);
    
    bl2[i]._x = random_range(-1, 1) + (1-t)*((1-t)*rx + t*(rx + eyes[1].x)/2) + t*((1-t)*(rx + eyes[1].x)/2 + t*eyes[1].x);
    bl2[i]._y = random_range(-1, 1) + (1-t)*((1-t)*ry + t*((ry + eyes[1].y)/2 + 200)) + t*((1-t)*((ry + eyes[1].y)/2 + 200) + t*eyes[1].y);
}