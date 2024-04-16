var i, dis, dir, ang, dir_spd, x_dist, y_dist;

if (appear) {
	if (instance_exists(player)) {
		x_dist = player.x-player.xprevious;
		y_dist = player.y-player.yprevious;
		
		if (count < 15) {
		    moved[count] = abs(x_dist) + abs(y_dist);
		    count += 1;
		} else {
		    var tot;
			
		    tot = 0;
		    for(i=0; i<14; i+=1) {
		        moved[i] = moved[i+1];
		        tot += moved[i];
		    }
		    moved[15] = abs(x_dist) + abs(y_dist);
		    tot += moved[15];
			
		    if (tot < 20) count = min(count+1, 20);
		    else count = 15;
		}
		
		x_dist = player.x + 12*x_dist;
		y_dist = player.y + 12*y_dist;
	} else {
		x_dist = -1;
		y_dist = -1;
	}
	
	dis = point_distance(x, y, x_dist, y_dist);
	dir = point_direction(x, y, x_dist, y_dist);
	
	if (instance_exists(player)) {
		if (image_index == 0) {
			if (dis <= 600) speed = 4 + 12*abs(cos(degtorad(dis/300*90)));
			else speed = 16;
		} else {
			if (dis <= 800) speed = 8 + 8*abs(1-sin(degtorad(dis/400*90)));
			else speed = 16;
		}
	} else speed = max(speed - 0.3, 0);
	if (direction > dir) {
	    if (direction - dir < 180) ang = dir - direction;
	    else ang = dir - direction + 360;
	} else {
	    if (dir - direction < 180) ang = dir - direction;
	    else ang = dir - direction - 360;
	}
	
	dir_spd = 2 + sqr(dis/200) + max(count-15, 0)/3;
	direction += clamp(ang, -dir_spd, dir_spd);

	image_angle -= floor(image_angle/360)*360;
	dir = (direction-90) - floor((direction-90)/360)*360;
	if (image_angle > dir) {
	    if (image_angle - dir < 180) image_angle -= (image_angle-dir)*speed/50;
	    else image_angle += (360-(image_angle-dir))*speed/50;
	} else {
	    if (dir - image_angle < 180) image_angle += (dir-image_angle)*speed/50;
	    else image_angle -= (360-(dir-image_angle))*speed/50;
	}
	
	if (instance_exists(sid)) {
	    dis = point_distance(x, y, sid.x, sid.y);
	    dir = point_direction(x, y, sid.x, sid.y);
	    if (dis <= 200) {
	        hspeed -= lengthdir_x(200-dis, dir)/100;
	        vspeed -= lengthdir_y(200-dis, dir)/100;
	    }
	}
} else {
	time += 1;
	y = 304 + 608*(1-sin(degtorad(time/170*90)));
}