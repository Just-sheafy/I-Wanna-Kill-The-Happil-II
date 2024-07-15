var CX, CY, i, j, w1, w2, w3, yy, _col, alpha, str, str_temp;

CX = room_width / 2;
CY = room_height / 2;

draw_set_font(creditFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if (t >= 145/2 && t <= 415/2) {
	draw_set_color(c_black);
	draw_rectangle(room_width/2*(1- min(1, (t-145/2)/20)), 0, room_width/2*min(1, (415/2-t)/20), room_height, false);
	draw_set_color(c_white);
	draw_rectangle(room_width/2+1+(room_width/2)*(1-min(1, (415/2-t)/20)), 0,
		room_width/2+room_width/2*min(1, (t-145/2)/20), room_height, false);
	draw_sprite_ext(spr_credit_title, -1, CX, CY, 1, 1, 0, c_white, min(1, (t-145/2)/10, (415/2-t)/10));
}

if (t >= 1170 && t <= 1433) draw_sprite_ext(spr_credit_screen, 0, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-1170)/100, (1433-t)/100));
if (t >= 1536 && t <= 1800) draw_sprite_ext(spr_credit_screen, 1, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-1536)/100, (1800-t)/100));
if (t >= 2091 && t <= 2407) draw_sprite_ext(spr_credit_screen, 2, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-2091)/100, (2407-t)/100));
if (t >= 2512 && t <= 2828) draw_sprite_ext(spr_credit_screen, 3, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-2512)/100, (2828-t)/100));
if (t >= 3039 && t <= 3354) draw_sprite_ext(spr_credit_screen, 4, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-3039)/100, (3354-t)/100));
if (t >= 3486 && t <= 3801) draw_sprite_ext(spr_credit_screen, 5, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-3486)/100, (3801-t)/100));
if (t >= 4039 && t <= 4407) draw_sprite_ext(spr_credit_screen, 6, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-4039)/100, (4407-t)/100));
if (t >= 4538 && t <= 4906) draw_sprite_ext(spr_credit_screen, 7, CX, CY, 0.75, 0.75, 0, c_white,
	ALPHA*min(0.8, (t-4538)/100, (4906-t)/100));
if (t >= 5520) draw_sprite_ext(spr_credit_gameover, -1, CX,
	room_height+95-389*min(1, (t-5520)/310), 1, 1, 0, c_white, ALPHA);

for(i=0; i<ds_list_size(end_text); i+=1) {
	yy = room_height + i*40 + ((i < 39)? 590 - t*2 : 590 - min(t, 1090)*0.48 - t*1.52);
	if (yy <= -32 || yy >= room_height+32) continue;
	
	str = ds_list_find_value(end_text, i);
	if (str == "") continue;
	
	if (error) {
		var l, s;
		
		if (string_count(",", str) >= 1) l = string_split(str, ", ");
		else l = string_split(str, " ");
		s = array_length(l);
		j = irandom_range(0, s-1);
		l[j] = choose("FATAL", "ERROR");
		
		l = array_shuffle(l);
		str_temp = "";
		for(j=0; j<s; j+=1) {
			str_temp += l[j];
			if (j < s-1) {
				if (string_count(",", str) >= 1) str_temp += ", ";
				else str_temp += " ";
			}
		}
	}
	
	if (yy <= 128) alpha = yy / 128;
	else if (yy >= room_height - 128) alpha = (room_height - yy) / 128;
	else alpha = 1;
	alpha *= ALPHA;
	
	if (error) {
		if (ds_list_find_value(col, i) == "LIGHTWHITE") {
			draw_text_color(CX, yy, str_temp, c_aqua, c_red, c_red, c_aqua, alpha);
		} else {
			draw_text_temp(CX, yy, str_temp, c_aqua, c_red, c_red, c_aqua, 2, alpha);
		}
	} else if (ds_list_find_value(col, i) == "WHITE") {
		draw_text_temp(CX, yy, str, c_white, c_white, c_white, c_white, 2, alpha);
	} else if (ds_list_find_value(col, i) == "LIGHTWHITE") {
		draw_text_color(CX, yy, str, c_white, c_white, c_white, c_white, alpha);
		/* if (i == 26) {
			w1 = string_width("KingSlendy");
			w2 = string_width(str);
			draw_text_temp(CX+w2/2, yy, "KingSlendy", c_aqua, c_red, c_red, c_aqua, 1, alpha);
			draw_text_temp(CX-w1/2, yy, str, c_white, c_white, c_white, c_white, 1, alpha);
		} else if (i == 28) {
			w1 = string_width("Mastermaxify");
			w2 = string_width(str);
			draw_text_temp(CX-w2/2, yy, "Mastermaxify", c_red, c_red, c_red, c_red, 1, alpha);
			draw_text_temp(CX+w1/2, yy, str, c_white, c_white, c_white, c_white, 1, alpha);
		} else draw_text_temp(CX, yy, str, c_white, c_white, c_white, c_white, 1, alpha); */
	} else if (ds_list_find_value(col, i) == "HAPPILOUS") {
		str_temp = string_copy(str, 1, 7);
		w1 = string_width(str_temp);
		str_temp = string_copy(str, 8, string_length(str)-14);
		w2 = string_width(str_temp);
		str_temp = string_copy(str, string_length(str)-6, 7);
		w3 = string_width(str_temp);
		draw_text_temp(CX-(w2+w3)/2, yy, string_copy(str, 1, 7), c_aqua, c_white, c_white, c_aqua, 1, alpha);
		draw_text_temp(CX+(w1-w3)/2, yy, string_copy(str, 8, string_length(str)-14), c_white, c_white, c_white, c_white, 1, alpha);
		draw_text_temp(CX+(w1+w2)/2, yy, string_copy(str, string_length(str)-6, 7), c_white, c_red, c_red, c_white, 1, alpha);
	} else if (ds_list_find_value(col, i) == "JUST")
		draw_text_temp(CX, yy, str, c_aqua, c_red, c_red, c_aqua, 2, alpha);
	else if (ds_list_find_value(col, i) == "DEV")
		draw_text_temp(CX, yy, str, c_white, c_white, c_orange, c_orange, 2, alpha);
	else if (ds_list_find_value(col, i) == "THANKS")
		draw_text_temp(CX, yy, str, c_white, c_white, c_yellow, c_yellow, 2, alpha);
	else if (ds_list_find_value(col, i) == "OLD") {
		_col = make_color_rgb(240, 250, 255);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "TESTER") {
		_col = make_color_rgb(200, 255, 240);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "STAGE1") {
		_col = make_color_rgb(208, 234, 217);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "BOSS1") {
		_col = make_color_rgb(240, 255, 207);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "HIDDEN1" || ds_list_find_value(col, i) == "BOSS2" || ds_list_find_value(col, i) = "SECRET2") {
		_col = make_color_rgb(255, 183, 183);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "SECRET1") {
		_col = make_color_rgb(255, 255, 231);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "STAGE2") {
		_col = make_color_rgb(181, 157, 234);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "HIDDEN2" || ds_list_find_value(col, i) == "HIDDEN3" || ds_list_find_value(col, i) == "HIDDEN4") {
		_col = make_color_rgb(207, 255, 237);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "STAGE3") {
		_col = make_color_rgb(236, 255, 185);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "BOSS3" || ds_list_find_value(col, i) == "BOSS4") {
		_col = make_color_rgb(255, 108, 124);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "SECRET3") {
		_col = make_color_rgb(204, 121, 143);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	} else if (ds_list_find_value(col, i) == "SECRET4") {
		_col = make_color_rgb(150, 105, 121);
		draw_text_temp(CX, yy, str, _col, _col, _col, _col, 2, alpha);
	}
}

draw_sprite_ext(sprBoss04_53, -1, room_width/2, room_height/2, 4.5, 4.5, 0, c_white, ALPHA_fade);