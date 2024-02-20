blur_intensity = 1;

t += 1;
if (t <= 25) {
	if (t > 15) blur_intensity = 1-(t-15)/10;
    image_xscale = 1 + sin(degtorad(90*(t-10)/10));
    image_yscale = image_xscale;
} else if (t >= 50 and t < 75) {
	if (t < 60) blur_intensity = (t-50)/10;
    image_xscale = 1 + sin(degtorad(90*(65-t)/10));
    image_yscale = image_xscale;
} else if (t >= 75) instance_destroy();