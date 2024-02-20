var xx, yy, cam = view_camera[0];

xx = camera_get_view_x(cam);
yy = camera_get_view_y(cam);

draw_set_color(c_black);
draw_rectangle(xx, yy+304-min(304, power(t, 2)/2), xx+800, yy+304+min(304, power(t, 2)/2), false);
draw_set_color(c_white);