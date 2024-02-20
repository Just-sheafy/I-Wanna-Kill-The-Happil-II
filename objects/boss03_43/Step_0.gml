var cam = view_camera[0];

if !instance_exists(player) and !pat {
	camera_set_view_pos(cam, camera_get_view_x(cam), 0);
	alarm[0] = 0; alarm[1] = 0; exit;
}
if s {camera_set_view_pos(cam, camera_get_view_x(cam), random_range(-25, 25));}