if (global.console) {
	var i, cam = view_camera[0], ar, xx, yy;
	
	xx = camera_get_view_x(cam);
	yy = camera_get_view_y(cam);
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(xx, yy, xx+800, yy+608, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_set_font(pauseFont24);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text(xx+8, yy+8, console_text);
	if (error_text != "") {
		if (error_text == "HELP") {
			ar[0] = "HELP";
			ar[1] = "ROOM [PREV/NEXT/FIRST/LAST/STAGE NUMBER]";
			ar[2] = "[ROOM LETTER/BOSS/SECRET/HIDDEN]";
			ar[3] = "PRACTICE [BOSS NUMBER] [PART NUMBER]";
			ar[4] = "INVINCIBLE [TRUE/FALSE]";
			ar[5] = "INFJUMP [TRUE/FALSE]";
			ar[6] = "FLIP";
			ar[7] = "ROTATE";
			ar[8] = "MASK [TRUE/FALSE]";
			ar[9] = "SAVE";
			ar[10] = "ITEM [ALL/NUMBER] [TRUE/FALSE]";
			ar[11] = "ACHIEVEMENT [ALL/NUMBER] [TRUE/FALSE]";
			ar[12] = "ROOMSPD [NORMAL/SLOW/FAST/NUMBER]";
			ar[13] = "MACRO [INITIALIZE/SET/REMOVE]";
			
			for(i=0; i<array_length(ar); i+=1) {
				if (i == 2) {
					draw_text(xx+8+string_width("ROOM "), yy+8 + 32*(i+1), ar[i]);
				} else draw_text(xx+8, yy+8 + 32*(i+1), ar[i]);
			}
		} else {
			if (error_text != "KEY?" and error_text != "INPUT?") draw_set_color(c_red);
			draw_text(xx+8, yy+40, error_text);
			draw_set_color(c_white);
		}
	}
	if (macro_text != "") {
		ar = string_split(macro_text, "\n");
		for(i=macro_show_num; i<min(macro_show_num+17, array_length(ar)); i+=1) {
			draw_text(xx+8, yy+8 + 32*(i-macro_show_num+1), ar[i]);
		}
	} else if (error_text != "HELP") {
		for(i=0; i<min(ds_list_size(list_console_text), 17); i+=1) {
			draw_text(xx+8, yy+8+32*(i+1)+((error_text != "")? 32:0), ds_list_find_value(list_console_text, i));
		}
	}
}