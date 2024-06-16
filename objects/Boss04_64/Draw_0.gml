var draw_x = x, draw_y = y;

if (!GravityH and !Gravity) {
    draw_y++;
} else if (GravityH and !Gravity) {
	draw_x++;
}

draw_sprite_ext(sprite_index, image_index, draw_x, draw_y, image_xscale * xscale, image_yscale * (2*Gravity-1), image_angle, image_blend, image_alpha);
if (world.show_mask)
	draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);