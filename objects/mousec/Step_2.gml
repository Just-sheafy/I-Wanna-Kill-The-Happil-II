if (window_get_fullscreen()) {
	x = mouse_x;
	y = mouse_y;
} else {
	var cam = view_camera[0];
	
	x = camera_get_view_x(cam) + display_mouse_get_x() - window_get_x();
	y = camera_get_view_y(cam) + display_mouse_get_y() - window_get_y();
}