var i, temp;

if (!enable) {
	instance_destroy(); exit;
}

temp = true;
for(i=0; i<sprite_get_number(sprBreakGlass); i+=1) {
    vs[i] += 0.05 * (2*Gravity-1);
    xx[i] += hs[i]; yy[i] += vs[i];
    angle[i] += angles[i];
    
    if ((vs[i] < 0 and yy[i] < room_height - 32) or (vs[i] > 0 and yy[i] < room_height + 32)) temp = false;
}

if (temp) instance_destroy();