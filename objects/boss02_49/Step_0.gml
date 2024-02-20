if ((x < -32 and hspeed < 0) or (x > room_width+32 and hspeed > 0)) instance_destroy();

d += 4;
y = oy+30*sin(degtorad(d));