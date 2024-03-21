if (surf == -1 or !surface_exists(surf)) draw_self();
else {
	draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
		image_xscale, image_yscale, image_angle, c_white, image_alpha);
}