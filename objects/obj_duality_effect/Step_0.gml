///Create surface if it was deleted and update mask

if(!surface_exists(surf)) {
    surf = surface_create(400, 640);
}
draw_set_color(c_white);
draw_set_alpha(1);

surface_set_target(surf);
draw_rectangle_color(0, 0, 400, 640, col_dark, col_light, col_light, col_dark, false);
surface_reset_target();