if a {
    draw_set_alpha(0.5);
    draw_rectangle_color(x-h, y-d, x, y+d, c_red, c_red, c_red, c_red, 0);
    draw_set_alpha(1);
    
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_dest_color);
    draw_rectangle_color(x+1, y-d, x+h, y+d, c_white, c_white, c_white, c_white, 0);
    draw_set_color(c_black);
    gpu_set_blendmode(bm_normal);
}
if b {
    gpu_set_blendmode(bm_subtract);
    draw_rectangle_color(x-600+10*c, y-304, x-400+10*c, y+304, c_white, c_black, c_black, c_white, 0);
    draw_rectangle_color(x+400-10*c, y-304, x+600-10*c, y+304, c_black, c_white, c_white, c_black, 0);
    gpu_set_blendmode(bm_normal);
}
draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);