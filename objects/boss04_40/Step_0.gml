t += spd;
if (t >= 80) t -= 80;
if (enable) image_alpha = 1/2;
else { image_alpha = max(0, image_alpha - 0.02); }

if ((x <= -32 && hspeed < 0) || (x >= room_width+32 && hspeed > 0) ||
	(y <= -32 && vspeed < 0) || (y >= room_height+32 && vspeed > 0)) instance_destroy();