var i, col1, col2, xx, yy, num, _scale, cam = view_camera[0];

if (type == 0) { // health bar
	if (hpm < 10 and hp >= hpm) {
		col1 = c_lime; col2 = c_green;
	} else if (hp > 1) {
		col1 = c_white; col2 = c_ltgray;
	} else {
		col1 = c_red; col2 = c_maroon;
	}
	draw_sprite_ext(sprPlayerHealth1, 0, x, y-32, 1, 1, 0, c_white, alpha);
	draw_set_alpha(alpha);
	draw_rectangle_color(x-28, y-32-4, x-28+55*shp/hpm, y-32+3, col1, col1, col2, col2, false);
	draw_set_alpha(1);
	if (alpha > 0 and hp == 1) {
		draw_sprite_ext(sprPlayerHealth1, 0, x, y-32, scale2, scale2, 0, c_white, alpha*alpha2);
		draw_set_alpha(alpha*alpha2);
		draw_rectangle_color(x-28*scale2, y-32-4*scale2, x-(28-55*shp/hpm)*scale2, y-32+3*scale2,
			col1, col1, col2, col2, false);
		draw_set_alpha(1);
	}
} else if (type == 1) { // show number
	xx = camera_get_view_x(cam);
	yy = camera_get_view_y(cam);

	draw_sprite(sprPlayerHealth2, 0, xx+16, yy+608-16);
	draw_set_text(c_white, pauseFont24, fa_left, fa_middle);
	if (hp > 1) scr_draw_text_outline_grad(xx+32, yy+608-16, "X" + string(hp), (hpm < 10 and hp >= hpm)? c_lime : c_white, (hpm < 10 and hp >= hpm)? c_green : c_ltgray, c_black);
	else scr_draw_text_outline_grad(xx+32, yy+608-16, "X" + string(hp), c_red, c_maroon, c_black);
	if (hp == 1) {
		draw_sprite_ext(sprPlayerHealth2, 0, xx+16, yy+608-16, scale2, scale2, 0, c_white, alpha2);
	}
} else if (type == 2) { // yoshi crafted world
	if (hpm < 10 and hp >= hpm) num = 2;
	else if (hp > 1) num = 1;
	else num = 0;
	for(i=0; i<ceil(shp); i+=1) {
		if (i == 0) _scale = 1;
		else {
			_scale = 3/4;
			if (i == ceil(shp)-1 && shp != floor(shp)) _scale = (shp-floor(shp))*3/4;
		}
		if (i < 12) {
			draw_sprite_ext(sprPlayerHealth3, num, x+32*sin(degtorad(30*i)), y-32*cos(degtorad(30*i)),
			_scale, _scale, -30*i, c_white, alpha);
		} else if (i < 12 + 18) {
			draw_sprite_ext(sprPlayerHealth3, num, x+56*sin(degtorad(20*(i-12))), y-56*cos(degtorad(20*(i-12))),
			_scale, _scale, -20*(i-12), c_white, alpha);
		} else {
			draw_sprite_ext(sprPlayerHealth3, num, x+80*sin(degtorad(15*(i-30))), y-80*cos(degtorad(15*(i-30))),
			_scale, _scale, -15*(i-30), c_white, alpha);
		}
	}
	
	if (alpha > 0 and hp == 1) {
		draw_sprite_ext(sprPlayerHealth3, 0, x, y-32, scale2, scale2, 0, c_white, alpha*alpha2);
	}
}