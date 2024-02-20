if (oy == 0) {
    draw_sprite_ext(sprAchieveGet, 0, x, y, 1, 1, 0, c_white, image_alpha);
    draw_sprite_ext(sprAchieveImage, index, x-80+32, y+4+32, 1/3, 1/3, 0, c_white, image_alpha);
    draw_sprite_ext(sprAchieveText, index, x-240, y+4, 1, 1, 0, c_white, image_alpha);
} else {
    draw_sprite_ext(sprAchieveGet, 0, x, y, 1, -1, 0, c_white, image_alpha);
    draw_sprite_ext(sprAchieveImage, index, x-80+32, y-4-32, 1/3, 1/3, 0, c_white, image_alpha);
    draw_sprite_ext(sprAchieveText, index, x-240, y-4-64, 1, 1, 0, c_white, image_alpha);
}