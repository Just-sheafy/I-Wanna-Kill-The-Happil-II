if active {
    draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle,
        make_color_rgb(255, 255-51*(5-hp), 255-51*(5-hp)), image_alpha);
    draw_sprite_ext(sprBoss02_78, 0, x, y, 2, 2, angle, c_white, image_alpha);
} else {
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle,
        make_color_rgb(255, 255-51*(5-hp), 255-51*(5-hp)), image_alpha);
}