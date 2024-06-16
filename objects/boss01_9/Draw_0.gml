gpu_set_fog(true, c_black, 1, 1);
draw_sprite(sprite_index, image_index, x + 1, y);
draw_sprite(sprite_index, image_index, x - 1, y);
draw_sprite(sprite_index, image_index, x, y + 1);
draw_sprite(sprite_index, image_index, x, y - 1);
gpu_set_fog(false, c_black, 1, 1);

gpu_set_fog(true, c_white, 1, 1);
draw_self();
gpu_set_fog(false, c_white, 1, 1);