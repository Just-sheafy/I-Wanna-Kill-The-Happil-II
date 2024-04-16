var i, temp, len = 0;

draw_self();

draw_set_alpha(image_alpha);
draw_set_color(c_white);
draw_set_font(global.fontBoss04);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

temp = string_split(string_copy(text[text_index], index, count), " ");
for(i=0; i<array_length(temp); i+=1) {
	draw_text(x+len-4, y-27, temp[i]);
	len += string_width(temp[i]) + 4;
}

draw_set_alpha(1);