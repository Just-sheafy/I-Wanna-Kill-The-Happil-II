///Draw surface and black edges

var cam = view_camera[0];

if !surface_exists(surf) {
    surf = surface_create(400, 640);
}

gpu_set_blendmode(bm_subtract);

//Left side
draw_surface_ext(surf, camera_get_view_x(cam), camera_get_view_y(cam), 1, 1, 0, col1, 1); 
draw_rectangle_color(camera_get_view_x(cam)+401, camera_get_view_y(cam),
	camera_get_view_x(cam)+800, camera_get_view_y(cam)+640, col_dark, col_light, col_light, col_dark, false);

//Right side
draw_surface_ext(surf, camera_get_view_x(cam)+800, camera_get_view_y(cam), -1, 1, 0, col2, 1); 
draw_rectangle_color(camera_get_view_x(cam), camera_get_view_y(cam),
	camera_get_view_x(cam)+400, camera_get_view_y(cam)+640, col_light, col_dark, col_dark, col_light, false);

gpu_set_blendmode(bm_normal);

