draw_set_font(global.fontBoss02);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (asdf == 2*floor(asdf/2)) draw_set_color(c_white);
else draw_set_color(c_red);
draw_text(x, y, string(ceil(asdf/2)));