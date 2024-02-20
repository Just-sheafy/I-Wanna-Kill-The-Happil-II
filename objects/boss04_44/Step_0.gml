t += 1;
if (t <= 20) {
    image_xscale = 2 + 2 * sin(degtorad(90*(t-10)/10));
    image_yscale = image_xscale;
} else if (t > 40 and t <= 60) {
    if (t == 60) {
		audio_play_sound(snd03_17, 0, false);
		var zx = instance_create_depth(0, 0, 0, view_an1);
		zx.asdf = 25;
	}
    if (clockwise) angle = 35 + 10*power((t-60)/20, 2);
    else angle = 55 - 10*power((t-60)/20, 2);
} else if (t > 60) {
    if (t >= 110) {
        disappear = true;
        image_xscale = max(0, 4 - 4*power((t-110)/10, 2));
        image_yscale = image_xscale;
    }
    if (clockwise) angle = 105 + 70*sin(degtorad(90*(t-90)/30));
    else angle = - 15 - 70*sin(degtorad(90*(t-90)/30));
}

if (!disappear) {
    if (alpha < 0.5) alpha += 0.02;
} else {
    if (alpha > 0) alpha -= 0.05;
    else instance_destroy();
}

if (!enable) image_alpha = alpha * random_range(0.5, 1);
else image_alpha = alpha*2;