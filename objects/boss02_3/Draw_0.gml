if sprite_index == sprBoss02_2 {gpu_set_blendmode(bm_add);}
draw_sprite_ext(sprite_index, image_index, x, y+107*(sprite_index == sprBoss02_83)+68*(sprite_index == sprBoss02_85),
	image_xscale, image_yscale, image_angle, c_white, image_alpha);
if sprite_index == sprBoss02_2 {gpu_set_blendmode(bm_normal);}