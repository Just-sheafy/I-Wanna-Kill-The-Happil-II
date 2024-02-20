///Draw spectrum and edges

var col, col_light, col_dark;
var i, yy;

col_light = c_white;
col_dark = c_black;

//Draw left side
for(yy = 0; yy < lines_num; yy += 1)
{
    for(i = 0; i < bars_num[yy]; i += 1)
    {
        col = make_color_hsv(hue[yy], sat[yy], 180 + i * 15)
        draw_sprite_ext(spr_spectrum_line, 0, 0 + i * 10 * scale, 10 + yy * 14, scale, 1, 0, col, 1);    
    }
}

//Draw right side
for(yy = 0; yy < lines_num; yy += 1)
{
    for(i = 0; i < bars_num[lines_num + yy]; i += 1)
    {
        col = make_color_hsv(hue[lines_num + yy], sat[yy], 255 - i * 15)
        draw_sprite_ext(spr_spectrum_line, 0, 800 - (i + 1) * 10 * scale, 10 + yy * 14, scale, 1, 0, col, 1);    
    }
}

//Draw edges
gpu_set_blendmode(bm_subtract);
draw_rectangle_color(0, 0, 32, 608, col_light, col_dark, col_dark, col_light, false);
draw_rectangle_color(800, 0, 800 - 32, 608, col_dark, col_light, col_light, col_dark, false);
gpu_set_blendmode(bm_normal);