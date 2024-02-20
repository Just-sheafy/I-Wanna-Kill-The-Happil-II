if (!instance_exists(player)) room_speed = 50;

if (!surface_exists(surf)) surf = surface_create(10*sprite_get_width(sprite_index), 10*sprite_get_height(sprite_index));

surface_set_target(surf);
draw_clear_alpha(c_white, 0);

if (zz > 100) c = c_gray;
else if (zz > 25) c = make_color_rgb(255-127*(zz-25)/75, 255-127*(zz-25)/75, 255-127*(zz-25)/75);
else c = c_white;
if (!trans) {
    draw_sprite_ext(sprite_index, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c, 1);
    draw_sprite_ext(sprite_index, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c_black, alpha);
} else {
	if (!is_end) {
	    if (trans_patt < 0) {
	        draw_sprite_ext(sprBoss04_23, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c, 1);
	        draw_sprite_ext(sprBoss04_24, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c, 1);
	        trans_patt += 1;
	    } else if (trans_patt < 30) {
	        draw_sprite_ext(sprBoss04_23, image_index, _xoffset, _yoffset+trans_patt*5/6, image_xscale, image_yscale, image_angle, c, 1);
	        draw_sprite_ext(sprBoss04_24, image_index, _xoffset, _yoffset-trans_patt*5/6, image_xscale, image_yscale, image_angle, c, 1);
	        trans_patt += 1;
	    } else if (trans_patt < 75) {
	        draw_sprite_ext(sprBoss04_23, image_index, _xoffset, _yoffset+25, image_xscale, image_yscale, image_angle, c, 1);
	        draw_sprite_ext(sprBoss04_24, image_index, _xoffset, _yoffset-25, image_xscale, image_yscale, image_angle, c, 1);
	        trans_patt += 1;
	    } else if (trans_patt <= 100) {
	        draw_sprite_ext(sprBoss04_23, image_index, _xoffset-10*(trans_patt-75), _yoffset+(100-trans_patt), image_xscale, image_yscale, image_angle, c, 1);
	        draw_sprite_ext(sprBoss04_24, image_index, _xoffset+10*(trans_patt-75), _yoffset-(100-trans_patt), image_xscale, image_yscale, image_angle, c, 1);
	        if (trans_patt < 100) trans_patt += 1;
	    }
	} else {
		if (trans_patt < 75) {
	        draw_sprite_ext(sprBoss04_23, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c, 1);
	        draw_sprite_ext(sprBoss04_24, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c, 1);
	        trans_patt += 1;
	    } else if (trans_patt <= 100) {
	        draw_sprite_ext(sprBoss04_23, image_index, _xoffset-10*(trans_patt-75), _yoffset, image_xscale, image_yscale, image_angle, c, 1);
	        draw_sprite_ext(sprBoss04_24, image_index, _xoffset+10*(trans_patt-75), _yoffset, image_xscale, image_yscale, image_angle, c, 1);
	        if (trans_patt < 100) trans_patt += 1;
	    }
	}
}

surface_reset_target();