///Draw fade effect

var cam = view_camera[view_current];
var draw_x, draw_y, width, height;

draw_x = camera_get_view_x(cam);
draw_y = camera_get_view_y(cam);

width = camera_get_view_width(cam);
height = camera_get_view_height(cam);

draw_set_color(color);
draw_set_alpha(alpha);

draw_rectangle(draw_x, draw_y, draw_x + width, draw_y + height, false);

draw_set_alpha(1);