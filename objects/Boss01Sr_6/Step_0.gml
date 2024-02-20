if (image_index == 1) {
	spd += grav;
	image_xscale += spd/8;
	if (image_xscale < 0) {
		instance_destroy();
		if (sid != -1 && instance_exists(sid)) {
			with(sid) instance_destroy();
		}
	}
}