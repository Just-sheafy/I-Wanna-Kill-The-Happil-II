draw_self();
if (patt >= 3) {
    var col;
    col = make_color_rgb(255, 255*(1-sqr(rat)), 255*(1-sqr(rat)));
    draw_sprite_general(sprite_index, 1, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)*(1-rat),
        sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)*rat,
        x, y-sprite_get_height(sprite_index)*(1/2-rat)*image_yscale, image_xscale, image_yscale, 180,
        col, col, c_red, c_red, image_alpha);
    col = make_color_rgb(255*(1-sqr(rat)), 255, 255);
    draw_sprite_general(sprite_index, 1, 0, 0,
        sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)*rat,
        x+sprite_get_width(sprite_index)/2*image_xscale, y+sprite_get_height(sprite_index)*1/2*image_yscale,
        image_xscale, image_yscale, 180,
        c_aqua, c_aqua, col, col, image_alpha);
}