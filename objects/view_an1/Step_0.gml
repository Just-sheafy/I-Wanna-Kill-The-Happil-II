var cam = view_camera[0];

if (!world.screen_effect_enable) {
	instance_destroy(); exit;
}

if (instance_exists(player) or not_check) {
    if asdf > 0 {
        if (!instance_exists(player)) camera_set_view_pos(cam, camera_get_view_x(cam), 0);
		camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam)+random_range(-3, 3));
        asdf -= 1;
    } else {
        if (!instance_exists(player)) camera_set_view_pos(cam, camera_get_view_x(cam), 0);
        instance_destroy();
    }
} else {
    camera_set_view_pos(cam, camera_get_view_x(cam), 0);
    instance_destroy();
}