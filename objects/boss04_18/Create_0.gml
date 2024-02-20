if (!world.screen_effect_enable) {
    surf = -1; exit;
}

var cam = view_camera[0];

sid = -1;
ox = 0;
oy = 0;
twist = 1;

surf = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));

surface_set_target(surf);
draw_clear_alpha(c_black, 0);
surface_reset_target();

// view_surface_id[0] = surf;

radius = 200;
not_check = false;
but_recover = false;