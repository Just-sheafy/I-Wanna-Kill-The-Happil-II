enable = true;
if (!world.screen_effect_enable) {
	enable = false; exit;
}

var cam = view_camera[0];

a = 0;
b = 0;
noise = 5;

surface = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));

surface_set_target(surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();

view_surface_id[0] = surface;
application_surface_draw_enable(false);