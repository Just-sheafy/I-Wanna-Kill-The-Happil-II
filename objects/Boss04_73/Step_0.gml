if (enable) {
	image_alpha = min(image_alpha + 0.01, 1);
	image_angle += angle_speed;
	if (x <= -32) x += room_width+64;
	else if (x >= room_width+32) x -= room_width+64;
	else if (y <= -32) y += room_height+64;
	else if (y >= room_height+32) y -= room_height+64;
} else {
	image_alpha = max(image_alpha - 0.01, 0);
	image_angle += 2*angle_speed;
	if (image_alpha <= 0) instance_destroy();
}