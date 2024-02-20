var xx0, xx1, yy0, yy1, dir;

xx0 = foot_0.x;
yy0 = foot_0.y;
xx1 = foot_1.x;
yy1 = foot_1.y;
    
dir = point_direction(xx0, yy0, xx1, yy1);
ox = (xx0+xx1)/2;
oy = (yy0+yy1)/2;
oy -= 160*image_yscale*abs(cos(degtorad(dir)));
    
x_origin += (ox-x_origin)/10;
y_origin += (oy-y_origin)/10;

x = x_origin;
y = y_origin;