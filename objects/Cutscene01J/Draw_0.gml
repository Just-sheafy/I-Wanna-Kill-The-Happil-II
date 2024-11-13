var cam_x, cam_y, cam = view_camera[0];

cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

draw_set_color(c_black);
draw_rectangle(cam_x, cam_y, cam_x + 800, cam_y + 608, false);
draw_set_color(c_white);

if (surface_exists(surf)) {
	draw_surface_ext(surf, cam_x + 208, cam_y + 64, 2, 2, 0, c_white, alpha);
}