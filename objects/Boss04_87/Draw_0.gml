draw_sprite_ext(sprite_index, image_index,
	x - xoffset*image_xscale*cos(degtorad(image_angle)) - yoffset*image_yscale*sin(degtorad(image_angle)),
	y + xoffset*image_xscale*sin(degtorad(image_angle)) - yoffset*image_yscale*cos(degtorad(image_angle)),
	image_xscale, image_yscale, image_angle, c_white, image_alpha);