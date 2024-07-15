var cam = view_camera[0];

if (instance_exists(player)) {
	if (player.x - 5 <= cam_x + xx || player.x + 5 >= cam_x + 800 - xx) {
		with(player) kill_player();
	}
}

camera_set_view_pos(cam, cam_x, 0);