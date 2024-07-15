draw_set_color(c_black);

draw_set_alpha(alpha);
draw_rectangle(cam_x, 0, cam_x+800, 608, false);
draw_set_alpha(1);

draw_rectangle(cam_x, 0, cam_x+xx, 608, false);
draw_rectangle(cam_x+800-xx, 0, cam_x+800, 608, false);

draw_set_color(c_white);