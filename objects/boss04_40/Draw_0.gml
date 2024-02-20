gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, 2*grav_dir/90, x, y, 1, 1, 0, c_white, image_alpha);
if (t <= 32) {
    if (grav_dir == 0) {
        draw_sprite_part_ext(sprite_index, 1, 0, 0, 64-t*2, 64, x-32+2*t, y-32, 1, 1, c_white, image_alpha);
        draw_sprite_part_ext(sprite_index, 1, 64-t*2, 0, t*2, 64, x-32, y-32, 1, 1, c_white, image_alpha);
    } else if (grav_dir == 90) {
        draw_sprite_part_ext(sprite_index, 3, 0, 0, 64, t*2, x-32, y+32-2*t, 1, 1, c_white, image_alpha);
        draw_sprite_part_ext(sprite_index, 3, 0, t*2, 64, 64-t*2, x-32, y-32, 1, 1, c_white, image_alpha);
    } else if (grav_dir == 180) {
        draw_sprite_part_ext(sprite_index, 5, 0, 0, t*2, 64, x+32-2*t, y-32, 1, 1, c_white, image_alpha);
        draw_sprite_part_ext(sprite_index, 5, t*2, 0, 64-t*2, 64, x-32, y-32, 1, 1, c_white, image_alpha);
    } else {
        draw_sprite_part_ext(sprite_index, 7, 0, 0, 64, 64-t*2, x-32, y-32+2*t, 1, 1, c_white, image_alpha);
        draw_sprite_part_ext(sprite_index, 7, 0, 64-t*2, 64, t*2, x-32, y-32, 1, 1, c_white, image_alpha);
    }
} else {
    draw_sprite_ext(sprite_index, 2*grav_dir/90+1, x, y, 1, 1, 0, c_white, image_alpha);
}
gpu_set_blendmode(bm_normal);