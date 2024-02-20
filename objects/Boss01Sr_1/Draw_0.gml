var i, j, temp, __scale = 20/32, __width = 64*__scale, __height = 64*__scale, __round = 2;

if (is_dead) exit;

if (mode == 0) {

draw_set_color(make_color_rgb(166, 149, 129));
draw_roundrect_ext(CX-__width*COLUMN/2-__round, CY-__height*ROW/2-__round,
	CX+__width*COLUMN/2+__round, CY+__height*ROW/2+__round, __round*2, __round*2, false);

for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (number[i, j] <= -1) continue;
		draw_set_color(col[0]);
		draw_roundrect_ext(CX+__width*(-COLUMN/2+i)+__round, CY+__height*(-ROW/2+j)+__round,
			CX+__width*(-COLUMN/2+i+1)-__round, CY+__height*(-ROW/2+j+1)-__round,
			__round, __round, false);
			
		if (number[i, j] <= 0) continue;
		__scale = (number_changed[i, j] == 1)? scale : 1;
		__scale = (number_changed[i, j] == 2)? (1.25-scale*0.25) * (move >= 1) : __scale;
		__scale = (number_changed[i, j] == 3)? (move >= 1) : __scale;
		
		draw_set_color(col[min(number[i, j], 12)]);
		draw_roundrect_ext(CX+__width*(-COLUMN/2+i+1/2)-__scale*(__width/2 - __round),
			CY+__height*(-ROW/2+j+1/2)-__scale*(__height/2 - __round),
			CX+__width*(-COLUMN/2+i+1/2)+__scale*(__width/2 - __round),
			CY+__height*(-ROW/2+j+1/2)+__scale*(__height/2 - __round),
			__scale*__round, __scale*__round, false);
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_achievements);

if (move < 1) {
	i = 0;
	while(i < ds_list_size(list_move)) {
		temp = ds_list_find_value(list_move, i);
		if (temp.num <= 0) { i += 1; continue; }
		draw_set_color(col[min(temp.num, 12)]);
		draw_roundrect_ext(CX+__width*(-COLUMN/2+lerp(temp.from_x, temp.to_x, move))+__round,
			CY+__height*(-ROW/2+lerp(temp.from_y, temp.to_y, move))+__round,
			CX+__width*(-COLUMN/2+lerp(temp.from_x, temp.to_x, move)+1)-__round,
			CY+__height*(-ROW/2+lerp(temp.from_y, temp.to_y, move)+1)-__round,
			__round, __round, false);
		i += 1;
	}

	i = 0;
	while(i < ds_list_size(list_move)) {
		temp = ds_list_find_value(list_move, i);
	
		if (temp.num <= 0) { i += 1; continue; }
		else if (temp.num <= 2) {
			draw_set_color(make_color_rgb(119, 110, 101));
			__scale = 1;
		} else if (temp.num <= 6) {
			draw_set_color(c_white);
			__scale = 1;
		} else if (temp.num <= 9) {
			draw_set_color(c_white);
			__scale = 0.75;
		} else if (temp.num <= 13) {
			draw_set_color(c_white);
			__scale = 0.5;
		} else {
			draw_set_color(c_white);
			__scale = 0.4;
		}
	
		draw_text_transformed(CX+__width*(-COLUMN/2+lerp(temp.from_x, temp.to_x, move)+1/2),
			CY+__height*(-ROW/2+lerp(temp.from_y, temp.to_y, move)+1/2),
			string(power(2, temp.num)), __scale, __scale, 0);
		i += 1;
	}
}

for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (number[i, j] <= 0) continue;
		__scale = (number_changed[i, j] == 1)? scale : 1;
		__scale = (number_changed[i, j] == 2)? (1.25-scale*0.25) * (move >= 1) : __scale;
		__scale = (number_changed[i, j] == 3)? (move >= 1) : __scale;
		
		if (number[i, j] <= 2) {
			draw_set_color(make_color_rgb(119, 110, 101));
		} else if (number[i, j] <= 6) {
			draw_set_color(c_white);
		} else if (number[i, j] <= 9) {
			draw_set_color(c_white);
			__scale *= 0.75;
		} else if (number[i, j] <= 13) {
			draw_set_color(c_white);
			__scale *= 0.5;
		} else {
			draw_set_color(c_white);
			__scale *= 0.4;
		}
		draw_text_transformed(CX+__width*(-COLUMN/2+i+1/2), CY+__height*(-ROW/2+j+1/2),
			string(power(2, number[i, j])), __scale, __scale, 0);
	}
}

for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (!surface_exists(surf[i, j])) continue;
		draw_surface_ext(surf[i, j], CX+__width*(-0.6*scale_AIM-COLUMN/2+i+1/2),
			CY+__height*(-0.6*scale_AIM-ROW/2+j+1/2),
			scale_AIM, scale_AIM, 0, c_white, 2-scale_AIM);
	}
}

} else {
	
draw_set_color(make_color_rgb(166, 149, 129));
draw_hexagon(CX, CY, __width*COLUMN/2+__round, 0, false);

for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (number[i, j] <= -1) continue;
		draw_set_color(col[0]);
		draw_hexagon(CX+(-COLUMN+1+i+j)*sqrt(3)/4*(__width+__round),
			CY+(-i+j)*3/4*(__width+__round), __width/2-__round, 30, false);
			
		if (number[i, j] <= 0) continue;
		__scale = (number_changed[i, j] == 1)? scale : 1;
		__scale = (number_changed[i, j] == 2)? (1.25-scale*0.25) * (move >= 1) : __scale;
		__scale = (number_changed[i, j] == 3)? (move >= 1) : __scale;
		
		draw_set_color(col[min(number[i, j], 12)]);
		draw_hexagon(CX+(-COLUMN+1+i+j)*sqrt(3)/4*(__width+__round),
			CY+(-i+j)*3/4*(__width+__round), __scale*(__width/2-__round), 30, false);
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_achievements);

if (move < 1) {
	i = 0;
	while(i < ds_list_size(list_move)) {
		temp = ds_list_find_value(list_move, i);
		if (temp.num <= 0) { i += 1; continue; }
		draw_set_color(col[min(temp.num, 12)]);
		draw_hexagon(CX+(-COLUMN+1+lerp(temp.from_x, temp.to_x, move)+lerp(temp.from_y, temp.to_y, move))*sqrt(3)/4*(__width+__round),
			CY+(-lerp(temp.from_x, temp.to_x, move)+lerp(temp.from_y, temp.to_y, move))*3/4*(__width+__round), __width/2-__round, 30, false);
		i += 1;
	}

	i = 0;
	while(i < ds_list_size(list_move)) {
		temp = ds_list_find_value(list_move, i);
	
		if (temp.num <= 0) { i += 1; continue; }
		else if (temp.num <= 2) {
			draw_set_color(make_color_rgb(119, 110, 101));
			__scale = 1;
		} else if (temp.num <= 6) {
			draw_set_color(c_white);
			__scale = 0.9;
		} else if (temp.num <= 9) {
			draw_set_color(c_white);
			__scale = 0.65;
		} else if (temp.num <= 13) {
			draw_set_color(c_white);
			__scale = 0.45;
		} else {
			draw_set_color(c_white);
			__scale = 0.3;
		}
		
		draw_text_transformed(CX+(-COLUMN+1+lerp(temp.from_x, temp.to_x, move)+lerp(temp.from_y, temp.to_y, move))*sqrt(3)/4*(__width+__round),
			CY+(-lerp(temp.from_x, temp.to_x, move)+lerp(temp.from_y, temp.to_y, move))*3/4*(__width+__round), string(power(2, temp.num)), __scale, __scale, 0);
		i += 1;
	}
}

for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (number[i, j] <= 0) continue;
		__scale = (number_changed[i, j] == 1)? scale : 1;
		__scale = (number_changed[i, j] == 2)? (1.25-scale*0.25) * (move >= 1) : __scale;
		__scale = (number_changed[i, j] == 3)? (move >= 1) : __scale;
		
		if (number[i, j] <= 2) {
			draw_set_color(make_color_rgb(119, 110, 101));
		} else if (number[i, j] <= 6) {
			draw_set_color(c_white);
			__scale *= 0.9;
		} else if (number[i, j] <= 9) {
			draw_set_color(c_white);
			__scale *= 0.65;
		} else if (number[i, j] <= 13) {
			draw_set_color(c_white);
			__scale *= 0.45;
		} else {
			draw_set_color(c_white);
			__scale *= 0.3;
		}
		draw_text_transformed(CX+(-COLUMN+1+i+j)*sqrt(3)/4*(__width+__round),
			CY+(-i+j)*3/4*(__width+__round), string(power(2, number[i, j])), __scale, __scale, 0);
	}
}

for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (!surface_exists(surf[i, j])) continue;
		draw_surface_ext(surf[i, j], CX+__width*(-0.6*scale_AIM)+sqrt(3)/4*(__width+__round)*(-COLUMN+1+i+j),
			CY+__width*(-0.6*scale_AIM)+3/4*(__width+__round)*(-i+j),
			scale_AIM, scale_AIM, 0, c_white, 2-scale_AIM);
	}
}
	
}

if (surface_exists(surf_back)) {
	draw_surface_ext(surf_back, CX-surface_get_width(surf_back)*surf_scale/2,
		CY-surface_get_height(surf_back)*surf_scale/2, surf_scale, surf_scale, 0, c_white, (1.25-surf_scale)/0.25);
}