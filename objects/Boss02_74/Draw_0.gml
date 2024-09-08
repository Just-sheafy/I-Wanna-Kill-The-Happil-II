var i;

if (!surface_exists(surf)) surf = surface_create(64, 608);

draw_sprite_part(back02Bs3, 0, 0, 0, 368, 608, 0, 0);
draw_sprite_part(back02Bs4, 0, 768, 0, 32, 608, 368, 0);
draw_sprite_part(back02Bs4, 0, 0, 0, 400, 608, 400, 0);
with(block) {
	if (!visible) {
		if (x == 352) {
			draw_sprite_part_ext(sprite_index, 1, 0, 0, 16, 32, x, y,
				image_xscale, image_yscale, make_color_rgb(255, ang, ang), image_alpha);
			draw_sprite_part_ext(sprite_index, 2, 16, 0, 16, 32, x+16*image_xscale, y,
				image_xscale, image_yscale, make_color_rgb(255, ang, ang), image_alpha);
		} else {
			draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale,
				image_angle, make_color_rgb(255, ang, ang), image_alpha);
		}
	}
}

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

draw_sprite_part(back02Bs3, 0, 368, 0, 64, 608, 0, 0);
with(block) {
	if (!visible) {
		draw_sprite_ext(sprite_index, 1, x-352, y, image_xscale, image_yscale, image_angle, make_color_rgb(255, ang, ang), image_alpha);
	}
}

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
for(i=0; i<6; i+=1) {
	draw_sprite_ext(sprBoss02_88, 0, 0, t-64+128*i, 1, -1, 0, c_white, 1);
	draw_sprite_ext(sprBoss02_88, 0, 0, t-64+128*i, 1, 1, 0, c_white, 1);
	// draw_triangle(0, t-128+128*i, 64, t-64+128*i, 0, t+128*i, false);
}
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(surf, 368, 0);