image_xscale = scale;
image_yscale = scale;
image_alpha = alpha;

surface_set_target(surf);
draw_clear_alpha(c_white, 0);
draw_sprite_ext(sprite_index, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c_white, 1);
surface_reset_target();