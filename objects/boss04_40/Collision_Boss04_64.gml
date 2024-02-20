if (enable && ((grav_dir == 0 && !(other.Gravity && other.GravityH)) ||
	(grav_dir == 90 && !(!other.Gravity && !other.GravityH)) ||
	(grav_dir == 180 && !(!other.Gravity && other.GravityH)) ||
	(grav_dir == 270 && !(other.Gravity && !other.GravityH)))) {
	enable = false;
	audio_play_sound(sndVJump, 0 ,false);
	if (grav_dir == 0) {
		with(other) {
			if (!Gravity) flip_grav(false);
			if (!GravityH) rotate_grav(false);
		}
	} else if (grav_dir == 90) {
		with(other) {
			if (Gravity) flip_grav(false);
			if (GravityH) rotate_grav(false);
		}
	} else if (grav_dir == 180) {
		with(other) {
			if (Gravity) flip_grav(false);
			if (!GravityH) rotate_grav(false);
		}
	} else if (grav_dir == 270) {
		with(other) {
			if (!Gravity) flip_grav(false);
			if (GravityH) rotate_grav(false);
		}
	}
}