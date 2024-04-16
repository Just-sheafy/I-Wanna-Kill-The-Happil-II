var temp;

if (enable && ((grav_dir == 0 && !(other.Gravity && other.GravityH)) ||
	(grav_dir == 90 && !(!other.Gravity && !other.GravityH)) ||
	(grav_dir == 180 && !(!other.Gravity && other.GravityH)) ||
	(grav_dir == 270 && !(other.Gravity && !other.GravityH)))) {
	enable = false;
	audio_play_sound(sndVJump, 0 ,false);
	if (grav_dir == 0) {
		if (instance_exists(player)) {
			temp = instance_create_depth(-64, player.y, -3, Boss04_79);
			temp.hspeed = 5;
		}
		with(other) {
			if (!Gravity) flip_grav(false);
			if (!GravityH) rotate_grav(false);
		}
	} else if (grav_dir == 90) {
		if (instance_exists(player)) {
			temp = instance_create_depth(player.x, room_height+64, -3, Boss04_79);
			temp.image_index = 2;
			temp.vspeed = -5;
		}
		with(other) {
			if (Gravity) flip_grav(false);
			if (GravityH) rotate_grav(false);
		}
	} else if (grav_dir == 180) {
		if (instance_exists(player)) {
			temp = instance_create_depth(room_width+64, player.y, -3, Boss04_79);
			temp.image_index = 4;
			temp.hspeed = -5;
		}
		with(other) {
			if (Gravity) flip_grav(false);
			if (!GravityH) rotate_grav(false);
		}
	} else if (grav_dir == 270) {
		if (instance_exists(player)) {
			temp = instance_create_depth(player.x, -64, -3, Boss04_79);
			temp.image_index = 6;
			temp.vspeed = 5;
		}
		with(other) {
			if (!Gravity) flip_grav(false);
			if (GravityH) rotate_grav(false);
		}
	}
}