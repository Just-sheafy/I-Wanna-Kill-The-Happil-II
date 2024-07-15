var i;

angle_image = 0;
angle = 0;
angle_spd = 3;
number = 3;
active = true;

for(i=0; i<number; i+=1) {
    flame[i] = instance_create_depth(x, y, depth-1, Hamjung01A2);
    flame[i].x = x + lengthdir_x(16*i, angle);
    flame[i].y = y + lengthdir_y(16*i, angle);
}