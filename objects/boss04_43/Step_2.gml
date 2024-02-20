if (sid == -1 or !instance_exists(sid)) { instance_destroy(); exit; }

var i, len, dir, ox_prev, oy_prev;

x = sid.x + ox * cos(degtorad(sid.image_angle)) + oy * sin(degtorad(sid.image_angle));
y = sid.y - ox * sin(degtorad(sid.image_angle)) + oy * cos(degtorad(sid.image_angle));

if (((_type == 1 or _type == 3) and patt <= 1) or patt == 2 or ((_type == 0 or _type == 2) and patt == 3)) {
    if (_type == 1 or _type == 3) {
        with(Boss04_45) {
			var len, dir;
            x += Boss04_43.x - Boss04_43.x_prev;
            y += Boss04_43.y - Boss04_43.y_prev;
			len = point_distance(Boss04_43.x, Boss04_43.y, x, y);
	        dir = point_direction(Boss04_43.x, Boss04_43.y, x, y);
	        x = Boss04_43.x + lengthdir_x(len, dir+Boss04_43.sid.image_angle-Boss04_43.angle_before);
	        y = Boss04_43.y + lengthdir_y(len, dir+Boss04_43.sid.image_angle-Boss04_43.angle_before);
        }
    }
	
	if (_type != 3 or patt == 0) {
	    for(i=0; i<num; i+=1) {
	        bl[i]._x += x-x_prev;
	        bl[i]._y += y-y_prev;
	        bl[i].ox += x-x_prev;
	        bl[i].oy += y-y_prev;
            
	        ox_prev = bl[i].ox;
	        oy_prev = bl[i].oy;
	        len = point_distance(x, y, bl[i].ox, bl[i].oy);
	        dir = point_direction(x, y, bl[i].ox, bl[i].oy);
	        bl[i].ox = x + lengthdir_x(len, dir+sid.image_angle-angle_before);
	        bl[i].oy = y + lengthdir_y(len, dir+sid.image_angle-angle_before);
	        bl[i]._x += bl[i].ox-ox_prev;
	        bl[i]._y += bl[i].oy-oy_prev;
	    }
	}
}
angle_before = sid.image_angle;