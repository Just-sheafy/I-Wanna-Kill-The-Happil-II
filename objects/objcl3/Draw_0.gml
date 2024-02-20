draw_set_alpha(image_alpha);
gpu_set_blendmode(bm_add);
draw_rectangle_color(x-1-d, y-16, x+d, y, c_black, c_black, c_white, c_white, false);
draw_rectangle_color(x-1-d, y+16, x+d, y, c_white, c_white, c_black, c_black, false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);