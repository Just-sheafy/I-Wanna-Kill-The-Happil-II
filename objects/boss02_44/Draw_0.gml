if ang {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(random(255), random(255), random(255)), image_alpha);
    gpu_set_blendmode(bm_normal);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}