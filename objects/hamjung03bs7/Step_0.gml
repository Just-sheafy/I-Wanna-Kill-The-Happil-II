image_angle += 15;
if (x_offset != 0 || y_offset != 0) {
	var dis = point_distance(0, 0, x_offset, y_offset), dir = point_direction(0, 0, x_offset, y_offset);
	x -= lengthdir_x(dis, dir+image_angle)-lengthdir_x(dis, dir+image_angle-15);
	y -= lengthdir_y(dis, dir+image_angle)-lengthdir_y(dis, dir+image_angle-15);
}