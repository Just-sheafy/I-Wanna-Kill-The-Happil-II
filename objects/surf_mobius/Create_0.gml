enable = true;
if (!world.screen_effect_enable) {
	enable = false; exit;
}

WIDTH = 200;
t_init = 0;
t = -100;
destroy = false;

var cam = view_camera[0];

surface = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));

surface_set_target(surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();

view_surface_id[0] = surface;
application_surface_draw_enable(false);

// exceptional
with(Boss04_h3) visible = false;
with(Boss04_51) visible = false;