var cam = view_camera[0];

if !world.HI_ok {instance_destroy(); exit;}
if world.warn {instance_destroy(); exit;}
world.warn = 1;
repeat(5) {
    instance_create_depth(camera_get_view_x(cam)+camera_get_view_width(cam)+random_range(-50, 50),
		camera_get_view_y(cam)+random_range(120,488), -6, Warning);
}
instance_create_depth(camera_get_view_x(cam)+camera_get_view_width(cam),camera_get_view_y(cam), -7, WarningHappilous);
instance_destroy();