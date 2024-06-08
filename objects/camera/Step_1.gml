if instance_exists(viewSlide) {
	var cam = view_camera[0];
	var set_x = viewSlide.x-camera_get_view_width(cam)/2;
	var set_y = viewSlide.y-camera_get_view_height(cam)/2;
	set_x = clamp(set_x, 0, room_width-camera_get_view_width(cam));
	set_y = clamp(set_y, 0, room_height-camera_get_view_height(cam));
	
	camera_set_view_pos(cam, set_x, set_y);
} else snap_view();