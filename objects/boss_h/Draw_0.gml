if (c) {
	draw_sprite_part_ext(sprite_index, -1, 0, 0, 273, 14, x-4, y-27 + 14 * (1-b), 1, b, c_white, image_alpha);
	draw_sprite_part(sprite_index, -1, 0, 14, 4, 28, x-4, y-13);
	draw_sprite_part(sprite_index, -1, 4, 14, 265 - a, 28, x, y-13);
	draw_sprite_part(sprite_index, -1, 269, 14, 4, 28, x + 265 - a, y-13);
} else {
	draw_sprite_part_ext(sprite_index, -1, 0, 0, 273, 14, x+4-273, y-27 + 14 * (1-b), 1, b, c_white, image_alpha);
	draw_sprite_part(sprite_index, -1, 0, 14, 4, 28, x - 269 + a, y-13);
	draw_sprite_part(sprite_index, -1, 4+a, 14, 265 - a, 28, x - 265 + a, y-13);
	draw_sprite_part(sprite_index, -1, 269, 14, 4, 28, x, y-13);
}