/// @description scr_draw_text_outline_grad(x, y, string, textcolortop, textcolorbottom, outlinecolor)
/// @param x
/// @param  y
/// @param  string
/// @param  textcolortop
/// @param  textcolorbottom
/// @param  outlinecolor
///draws any text with an outline
///argument0 - text X position
///argument1 - text Y position
///argument2 - text string
///argument3 - color of the text inside the outline
///argument4 - color of the text outline
function scr_draw_text_outline_grad(argument0, argument1, argument2, argument3, argument4, argument5) {
	var text_x, text_y, text_str, text_col_top, text_col_btm, outline_col;

	text_x = argument0;
	text_y = argument1;
	text_str = argument2;
	text_col_top = argument3;
	text_col_btm = argument4;
	outline_col = argument5;

	//draw the text outline
	draw_set_color(outline_col);
	draw_text(text_x - 1, text_y + 1, string_hash_to_newline(text_str));
	draw_text(text_x - 1, text_y, string_hash_to_newline(text_str));
	draw_text(text_x - 1, text_y - 1, string_hash_to_newline(text_str));
	draw_text(text_x + 1, text_y + 1, string_hash_to_newline(text_str));
	draw_text(text_x + 1, text_y, string_hash_to_newline(text_str));
	draw_text(text_x + 1, text_y - 1, string_hash_to_newline(text_str));
	draw_text(text_x, text_y + 1, string_hash_to_newline(text_str));
	draw_text(text_x, text_y - 1, string_hash_to_newline(text_str));

	//draw the text itself
	draw_text_color(text_x, text_y, string_hash_to_newline(text_str), text_col_top, text_col_top, text_col_btm, text_col_btm, 1);




}
