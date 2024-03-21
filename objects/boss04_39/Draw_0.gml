var ir, jr;

if (!surface_exists(surf)) surf = surface_create(61, 25);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

ir = irandom_range(0, 32); jr = irandom_range(0, 39);
draw_sprite_part(sprBoss04_65, current_time, ir, jr, 32, 25, 0, 0);
ir = irandom_range(0, 32); jr = irandom_range(0, 39);
draw_sprite_part(sprBoss04_65, current_time, ir, jr, 32, 25, 32, 0);

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite(sprite_index, image_index, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
gpu_set_blendmode(bm_normal);
surface_reset_target();

if (image_angle == 0) {
	draw_surface_general(surf, max(0, (image_xscale > 0) * (64+45-x)/1.5, (image_xscale < 0) * (x-736+45)/1.5), 0,
        max(0, min(61, 61-(64+45-x)/1.5, 61-(x-736+45)/1.5)), 25,
		x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
		image_xscale, image_yscale, image_angle, c_white, c_white, c_white, c_white, image_alpha);
} else if (image_angle == 90) {
	draw_surface_general(surf, max(0, (image_xscale < 0) * (64+45-y)/1.5, (image_xscale > 0) * (y-544+45)/1.5), 0,
        max(0, min(61, 61-(64+45-y)/1.5, 61-(y-544+45)/1.5)), 25,
		x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
		image_xscale, image_yscale, image_angle, c_white, c_white, c_white, c_white, image_alpha);
	/*
    draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale < 0) * (64+45-y)/1.5, (image_xscale > 0) * (y-544+45)/1.5), 0,
        max(0, min(61, 61-(64+45-y)/1.5, 61-(y-544+45)/1.5)), 25,
        x-25*image_yscale, y+30*image_xscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);*/
} else if (image_angle == 180) {
	draw_surface_general(surf, max(0, (image_xscale < 0) * (64+45-x)/1.5, (image_xscale > 0) * (x-736+45)/1.5), 0,
        max(0, min(61, 61-(64+45-x)/1.5, 61-(x-736+45)/1.5)), 25,
		x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
		image_xscale, image_yscale, image_angle, c_white, c_white, c_white, c_white, image_alpha);
    /*draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale < 0) * (64+45-x)/1.5, (image_xscale > 0) * (x-736+45)/1.5), 0,
        max(0, min(61, 61-(64+45-x)/1.5, 61-(x-736+45)/1.5)), 25,
        x+30*image_xscale, y+25*image_yscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);*/
} else {
	draw_surface_general(surf, max(0, (image_xscale > 0) * (64+45-y)/1.5, (image_xscale < 0) * (y-544+45)/1.5), 0,
        max(0, min(61, 61-(64+45-y)/1.5, 61-(y-544+45)/1.5)), 25,
		x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
		image_xscale, image_yscale, image_angle, c_white, c_white, c_white, c_white, image_alpha);
    /*draw_sprite_general(sprite_index, image_index,
        max(0, (image_xscale > 0) * (64+45-y)/1.5, (image_xscale < 0) * (y-544+45)/1.5), 0,
        max(0, min(61, 61-(64+45-y)/1.5, 61-(y-544+45)/1.5)), 25,
        x+25*image_yscale, y-30*image_xscale, image_xscale, image_yscale,
        image_angle, c_white, c_white, c_white, c_white, image_alpha);*/
}