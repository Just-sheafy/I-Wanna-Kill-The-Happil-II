///Draw title and buttons

var title_offset;

title_offset = sin(degtorad(t * 3)) * 8;
draw_sprite(spr_title_1, 0, title_x, title_y + title_offset);


for(i = 0; i < total_options; i += 1)
{
    draw_sprite_ext(btn_spr[i], i == select, x_selector, y_selector + i * y_separator, btn_scale[i], 1, 0, c_white, button_alpha);
} 
