if room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 or (room == Stage04Bs and sprite_index == block02Bs) {
    if (instance_exists(player)) {
		if point_distance(x+16, y+16, player.x, player.y) > 150 or image_index == 0 {ang = 255;}
	    else {ang = point_distance(x+16, y+16, player.x, player.y)*255/150;}
	} else ang = 255;
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(255, ang, ang), image_alpha);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}