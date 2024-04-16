draw_self();

if (image_index == 69) {
	var i;
	
	draw_set_font(stageFont);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_color(c_black);
	draw_set_alpha(0.1);
	draw_text(x-4, y+173, text);
	draw_text(x+4, y+173, text);
	draw_text(x, y+173-4, text);
	draw_text(x, y+173+4, text);
	draw_set_alpha(0.2);
	draw_text(x-3, y+173, text);
	draw_text(x+3, y+173, text);
	draw_text(x, y+173-3, text);
	draw_text(x, y+173+3, text);
	draw_set_alpha(0.4);
	draw_text(x-2, y+173, text);
	draw_text(x+2, y+173, text);
	draw_text(x, y+173-2, text);
	draw_text(x, y+173+2, text);
	draw_set_alpha(1);
	draw_text(x-1, y+173, text);
	draw_text(x+1, y+173, text);
	draw_text(x, y+173-1, text);
	draw_text(x, y+173+1, text);
	draw_set_color(c_white);
	draw_text(x, y+173, text);
}