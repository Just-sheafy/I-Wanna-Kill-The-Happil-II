if (enable and ((image_index == 0 and other.Gravity) or (image_index == 1 and !other.Gravity))) {
	with(other) flip_grav();
	with (Boss04_84) {
		enable = false;
		alarm[10] = 25;
	}
}