var draw_x = x, draw_y = y;

if (!GravityH and !Gravity) {
    draw_y++;
} else if (GravityH and !Gravity) {
	draw_x++;
}

draw_sprite_ext(sprite_index, image_index, draw_x, draw_y, image_xscale * xscale, image_yscale * (2*Gravity-1), image_angle, image_blend, image_alpha);