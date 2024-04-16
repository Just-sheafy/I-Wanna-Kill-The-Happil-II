var xx, yy;

image_angle = 2*(dir-90);

if (!instance_exists(sid)) { instance_destroy(); exit; }

if (instance_exists(platform_id)) {
	xx = platform_id.x-room_width/2;
	yy = platform_id.y-room_height/2;
	
	platform_x = room_width/2 - xx + 2*(sqr(cos(degtorad(dir)))*xx - cos(degtorad(dir))*sin(degtorad(dir))*yy);
	platform_y = room_height/2 - yy + 2*(-cos(degtorad(dir))*sin(degtorad(dir))*xx + sqr(sin(degtorad(dir)))*yy);
}

xx = sid.x-room_width/2;
yy = sid.y-room_height/2;

x = room_width/2 - xx + 2*(sqr(cos(degtorad(dir)))*xx - cos(degtorad(dir))*sin(degtorad(dir))*yy);
y = room_height/2 - yy + 2*(-cos(degtorad(dir))*sin(degtorad(dir))*xx + sqr(sin(degtorad(dir)))*yy);