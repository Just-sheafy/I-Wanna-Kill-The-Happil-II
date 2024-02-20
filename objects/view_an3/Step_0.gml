var cam = view_camera[0];

if (!world.screen_effect_enable) {
    instance_destroy(); exit;
}

if (instance_exists(player) or not_check) {
    if asdf > 0 {
        var i;
        i = random_range(-asdf, asdf);
        if (!instance_exists(player)) camera_set_view_pos(cam, 0, 0);
		camera_set_view_pos(cam, camera_get_view_x(cam)+i, camera_get_view_y(cam)+i);
        asdf -= a;
    } else {
        if (!instance_exists(player)) camera_set_view_pos(cam, 0, 0);
        instance_destroy();
    }
} else {
	camera_set_view_pos(cam, 0, 0);
    instance_destroy();
	with(surf_shake) instance_destroy();
}