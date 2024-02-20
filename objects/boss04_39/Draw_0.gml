if (image_angle == 0) {
    draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale > 0) * (64+45-x)/1.5, (image_xscale < 0) * (x-736+45)/1.5), 0,
        max(0, min(61, 61-(64+45-x)/1.5, 61-(x-736+45)/1.5)), 25,
        x-30*image_xscale, y-25*image_yscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);
} else if (image_angle == 90) {
    draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale < 0) * (64+45-y)/1.5, (image_xscale > 0) * (y-544+45)/1.5), 0,
        max(0, min(61, 61-(64+45-y)/1.5, 61-(y-544+45)/1.5)), 25,
        x-25*image_yscale, y+30*image_xscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);
} else if (image_angle == 180) {
    draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale < 0) * (64+45-x)/1.5, (image_xscale > 0) * (x-736+45)/1.5), 0,
        max(0, min(61, 61-(64+45-x)/1.5, 61-(x-736+45)/1.5)), 25,
        x+30*image_xscale, y+25*image_yscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);
} else {
    draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale > 0) * (64+45-y)/1.5, (image_xscale < 0) * (y-544+45)/1.5), 0,
        max(0, min(61, 61-(64+45-y)/1.5, 61-(y-544+45)/1.5)), 25,
        x+25*image_yscale, y-30*image_xscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);
}