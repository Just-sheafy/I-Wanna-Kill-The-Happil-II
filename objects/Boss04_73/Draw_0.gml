var i, j, ir, jr;

if (!surface_exists(surf)) surf = surface_create(32, 32);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

ir = irandom_range(0, 31); jr = irandom_range(0, 31);
draw_sprite_part_ext(sprBoss04_65, current_time, ir, jr, 32, 32, 0, 0, 1, 1, c_white, 1);

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite(sprBoss04_68, 0, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_self();
draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
	y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
	image_xscale, image_yscale, image_angle, c_white, image_alpha);