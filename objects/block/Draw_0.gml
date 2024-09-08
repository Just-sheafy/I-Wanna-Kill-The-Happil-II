if room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 or (room == Stage04Bs and sprite_index == block02Bs) {
	if (room == Stage02Bs and image_index == 1) {
		if (x <= 400) draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(255, ang, ang), image_alpha);
		else draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(255, ang, ang), image_alpha);
	} else draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(255, ang, ang), image_alpha);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}