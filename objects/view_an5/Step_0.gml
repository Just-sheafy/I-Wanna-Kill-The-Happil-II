var cam = view_camera[0];

if (!world.screen_effect_enable) {
    instance_destroy(); exit;
}

if (instance_exists(player) and not_check) {
    if asdf > 0 {
		camera_set_view_pos(cam, camera_get_view_x(cam), random_range(-amplitude, amplitude));
        asdf -= 1;
    } else {
        instance_destroy();
    }
} else {
	camera_set_view_pos(cam, camera_get_view_x(cam), 0);
    instance_destroy();
}