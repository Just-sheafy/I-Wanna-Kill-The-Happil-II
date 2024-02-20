if (window_get_fullscreen()) {
	x = mouse_x;
	y = mouse_y;
} else {
	x = display_mouse_get_x() - window_get_x();
	y = display_mouse_get_y() - window_get_y();
}