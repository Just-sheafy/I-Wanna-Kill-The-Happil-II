var b;

draw_set_font(Hamjung03Font);
if a > 1 {b = c_white;} else {b = c_red;}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(b);

draw_text_transformed(x, y, string(a), 1, scale, 0);