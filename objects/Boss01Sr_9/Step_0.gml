t += 1;
if (t >= 20) t = 0;
if (t < 15) image_index = 2*floor(image_index/2);
else if (t < 20) image_index = 2*floor(image_index/2)+1;

if (hspd > 0) hspd = max(0, hspd-fric);
else hspd = min(0, hspd+fric);
vspd += grav;
x += hspd;
y += vspd;

if (patt == 0) {
	if (instance_exists(player)) {
		if (x < player.x-50) hspd = min(7, hspd+0.3);
		else if (x > player.x+50) hspd = max(-7, hspd-0.3);
	} else {
		hspd = max(-7, hspd-0.3);
	}
}

if (x <= 128) hspd = abs(hspd);
if (x >= 672) hspd = -abs(hspd);
if (y >= 384-16 && vspd > 0) {
	if (vspd > 2.5) {
		y -= abs(vspd);
		vspd = -abs(vspd)*4/5;
	} else {
		y -= 1;
		vspd = -2.5;
	}
}

if (hspd > 0) image_xscale = abs(image_xscale);
else if (hspd < 0) image_xscale = -abs(image_xscale);