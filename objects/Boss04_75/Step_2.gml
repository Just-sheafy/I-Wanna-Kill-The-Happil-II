var i, ry;

if (!surface_exists(surf))
	surf = surface_create(4*sprite_get_width(sprite_index), 4*sprite_get_height(sprite_index));

surface_set_target(surf);
draw_clear_alpha(c_white, 0);
if (noise <= 0) draw_sprite_ext(sprite_index, image_index, _xoffset, _yoffset, image_xscale, image_yscale, image_angle, c_white, 1);
else {
	for(i=0; i<13; i+=1) {
	    ry = random_range(-1, 1)*(8+8*noise);
	    if (irandom_range(0, 49-mode*29) == 0) continue;
	    draw_sprite_general(sprite_index, image_index, 8*i, 0, 8, 88,
	        _xoffset+8*(i-13/2)*image_xscale*cos(degtorad(image_angle))-(44*image_yscale+ry)*sin(degtorad(image_angle)),
	        _yoffset-8*(i-13/2)*image_xscale*sin(degtorad(image_angle))-(44*image_yscale+ry)*cos(degtorad(image_angle)),
	        image_xscale, image_yscale, image_angle, c_white, c_white, c_white, c_white, image_alpha);
	}
}
surface_reset_target();