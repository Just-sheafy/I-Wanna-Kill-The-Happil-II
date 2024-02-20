if (image_index == 1 && sid != -1 && instance_exists(sid)) {
	sid.x = x + lengthdir_x(8*image_xscale, image_angle);
	sid.y = y + lengthdir_y(8*image_xscale, image_angle);
}