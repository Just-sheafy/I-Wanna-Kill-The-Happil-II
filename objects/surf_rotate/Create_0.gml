if (!world.screen_effect_enable) {
    instance_destroy(); exit;
}

var cam = view_camera[0];

surface2 = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));

surface_set_target(surface2);
draw_clear_alpha(c_black, 0);
surface_reset_target();

view_surface_id[0] = surface2;

// application_surface_draw_enable(false);