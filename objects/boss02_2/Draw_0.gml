if crazy and sprite_index != sprBoss02_3 {
    draw_rectangle_color(x-112, y-112, x+111, y+111, color, color, color, color, false);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}