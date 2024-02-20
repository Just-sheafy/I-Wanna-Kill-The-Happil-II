var xx, yy, cam = view_camera[1];

xx = camera_get_view_x(cam);
yy = camera_get_view_y(cam);

if !a {
    if xx >= 288 {exit;}
	camera_set_view_pos(cam, xx+9, yy+3);
	camera_set_view_size(cam, camera_get_view_width(cam)-18, camera_get_view_height(cam)-12.5);
} else {
    if xx <= 0 {view_visible[1] = false; instance_destroy(); exit;}
	camera_set_view_pos(cam, xx-9, yy-3);
	camera_set_view_size(cam, camera_get_view_width(cam)+18, camera_get_view_height(cam)+12.5);
}