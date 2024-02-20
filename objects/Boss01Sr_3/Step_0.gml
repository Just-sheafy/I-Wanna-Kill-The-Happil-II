if (canhit) {
	if (!dis) angle += 30;
	else {
		scale += 0.05;
		if (scale >= 2) instance_destroy();
	}
	if (y <= -64) instance_destroy();
} else {
	if (y > room_height+32) {
		if (!canhit_warp) {
			canhit_warp = true;
			y -= room_height+64;
		} else instance_destroy();
	}
}

if (!surface_exists(surf)) {
	surf = surface_create(100, 100);
	
	var __scale = 20/32, __width = 64*__scale, __height = 64*__scale, __round = 2;
	
	surface_set_target(surf);
	draw_clear_alpha(c_white, 0);
	
	if (mode == 0) {
		draw_set_color(col);
		draw_roundrect_ext(50-__width/2+__round, 50-__height/2+__round,
			50+__width/2-__round, 50+__height/2-__round,
			__scale*__round, __scale*__round, false);

		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_achievements);

		__scale = 1;
		if (num <= 2) {
			draw_set_color(make_color_rgb(119, 110, 101));
		} else if (num <= 6) {
			draw_set_color(c_white);
		} else if (num <= 9) {
			draw_set_color(c_white);
			__scale *= 0.75;
		} else if (num <= 13) {
			draw_set_color(c_white);
			__scale *= 0.5;
		} else {
			draw_set_color(c_white);
			__scale *= 0.4;
		}
		draw_text_transformed(50, 50, string(power(2, num)), __scale, __scale, 0);
	} else {
		__scale = 1;
		draw_set_color(col);
		draw_hexagon(50, 50, __scale*(__width/2-__round), 30, false);
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_achievements);
		
		if (num <= 2) {
			draw_set_color(make_color_rgb(119, 110, 101));
		} else if (num <= 6) {
			draw_set_color(c_white);
			__scale *= 0.9;
		} else if (num <= 9) {
			draw_set_color(c_white);
			__scale *= 0.65;
		} else if (num <= 13) {
			draw_set_color(c_white);
			__scale *= 0.45;
		} else {
			draw_set_color(c_white);
			__scale *= 0.3;
		}
		draw_text_transformed(50, 50, string(power(2, num)), __scale, __scale, 0);
	}
	
	surface_reset_target();
}