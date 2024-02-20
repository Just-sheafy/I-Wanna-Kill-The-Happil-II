if (!instance_exists(player)) exit;

var cam = view_camera[0];

if (!surface_exists(surf))
    surf = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));

draw_set_alpha(alpha);
draw_rectangle(camera_get_view_x(cam), camera_get_view_y(cam),
	camera_get_view_x(cam) + camera_get_view_width(cam),
	camera_get_view_y(cam) + camera_get_view_height(cam), false);
draw_set_alpha(1);

surface_set_target(surf);
draw_clear(c_black);
gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_circle(player.x, player.y, radius, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(surf, camera_get_view_x(cam), camera_get_view_y(cam));