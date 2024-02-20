if (!is_dead) {
	draw_sprite_ext(sprBoss01Sr_2, 0, x-12*image_xscale, y-58*image_yscale, -image_xscale, image_yscale, angle, c_white, 1);
	draw_sprite_ext(sprBoss01Sr_2, 0, x+12*image_xscale, y-58*image_yscale, image_xscale, image_yscale, -angle, c_white, 1);
}
if (oy < 628) draw_sprite_part_ext(sprite_index, image_index, 0, 0, 88, min(80, (628-oy)/image_yscale), x-44*image_xscale, y-80*image_yscale, image_xscale, image_yscale, c_white, 1);
draw_sprite_ext(sprBoss01Sr_9, 0, x-8*image_xscale, y-70*image_yscale, image_xscale*(2-blue_alpha), image_yscale*(2-blue_alpha), 0, c_white, blue_alpha);
draw_sprite_ext(sprBoss01Sr_9, 1, x-28*image_xscale, y-44*image_yscale, image_xscale*(2-green_alpha), image_yscale*(2-green_alpha), 0, c_white, green_alpha);
draw_sprite_ext(sprBoss01Sr_9, 2, x-4*image_xscale, y-42*image_yscale, image_xscale*(2-yellow_alpha), image_yscale*(2-yellow_alpha), 0, c_white, yellow_alpha);
draw_sprite_ext(sprBoss01Sr_9, 3, x+27*image_xscale, y-41*image_yscale, image_xscale*(2-red_alpha), image_yscale*(2-red_alpha), 0, c_white, red_alpha);