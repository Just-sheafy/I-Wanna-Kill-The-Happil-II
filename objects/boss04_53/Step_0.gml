if (alpha > 0) {
	alpha -= 0.05;
	if (grav_dir == 0 || grav_dir == 180) image_xscale += 0.025*scale;
	else if (grav_dir == 90 || grav_dir == 270) image_yscale += 0.025*scale;
	else { image_xscale += 0.025*scale; image_yscale += 0.025*scale; }
} else instance_destroy();