var xx, yy, cam = view_camera[0];

xx = camera_get_view_x(cam);
yy = camera_get_view_y(cam);

gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_dest_color);
draw_rectangle_color(xx, yy, xx+800, yy+608, c_white, c_white, c_white, c_white, 0);
draw_set_color(c_black);
gpu_set_blendmode(bm_normal);