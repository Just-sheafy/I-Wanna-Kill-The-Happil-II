/// @description scr_draw_text_outline(x, y, string, textcolor, outlinecolor)
/// @param x
/// @param  y
/// @param  string
/// @param  textcolor
/// @param  outlinecolor
///draws any text with an outline
///argument0 - text X position
///argument1 - text Y position
///argument2 - text string
///argument3 - color of the text inside the outline
///argument4 - color of the text outline
function scr_draw_text_outline(argument0, argument1, argument2, argument3, argument4) {
	var text_x, text_y, text_str, text_col, outline_col;

	text_x = argument0;
	text_y = argument1;
	text_str = argument2;
	text_col = argument3;
	outline_col = argument4;

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
	draw_set_color(text_col);
	draw_text(text_x, text_y, string_hash_to_newline(text_str));




}
