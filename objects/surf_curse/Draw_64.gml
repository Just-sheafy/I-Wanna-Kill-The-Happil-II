if (!enable or !surface_exists(surface) or !instance_exists(view_an4)) exit;

var i, j, k, cam = view_camera[0];

draw_clear_alpha(0, 0);
for (i = 0; i < camera_get_view_width(cam); i += 1) {
    j = irandom_range(-noise, noise);
    j = max(0, j);
    k = irandom(4);
    draw_surface_part_ext(surface, camera_get_view_x(cam) + i, camera_get_view_y(cam), 1 + k,
		camera_get_view_height(cam), camera_get_view_x(cam) + i, camera_get_view_y(cam) + random_range(-j, j) + a, 1, 1, c_white, 1);
    i += k;
}