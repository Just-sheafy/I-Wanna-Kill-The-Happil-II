var i, j, _rx, _ry;

if (mode == 0) draw_self();
else if (mode == 1) {
    for(i=0; i<13; i+=1) {
        _ry = random_range(-1, 1)*16;
        if (irandom_range(0, 50) == 0) continue;
        draw_sprite_general(sprite_index, image_index, 4*i, 0, 4, 88,
            lx+4*(i-13)*image_xscale*cos(degtorad(langle))-(44*image_yscale+_ry)*sin(degtorad(langle)),
            ly-4*(i-13)*image_xscale*sin(degtorad(langle))-(44*image_yscale+_ry)*cos(degtorad(langle)),
            image_xscale, image_yscale, langle, c_white, c_white, c_white, c_white, image_alpha);
    }
    for(i=13; i<26; i+=1) {
        _ry = random_range(-1, 1)*16;
        if (irandom_range(0, 50) == 0) continue;
        draw_sprite_general(sprite_index, image_index, 4*i, 0, 4, 88,
            rx+4*(i-13)*image_xscale*cos(degtorad(rangle))-(44*image_yscale+_ry)*sin(degtorad(rangle)),
            ry-4*(i-13)*image_xscale*sin(degtorad(rangle))-(44*image_yscale+_ry)*cos(degtorad(rangle)),
            image_xscale, image_yscale, rangle, c_white, c_white, c_white, c_white, image_alpha);
    }
} else if (mode == 2 or mode == 3) {
    for(i=0; i<13; i+=1) {
        _ry = random_range(-1, 1)*16;
        if (irandom_range(0, 50) == 0) continue;
        draw_sprite_general(sprite_lindex, image_lindex, 4*i, 0, 4, 88,
            lx+4*(i-13)*(1+sep)*image_xscale*cos(degtorad(langle))-(44*image_yscale+_ry)*sin(degtorad(langle)),
            ly-4*(i-13)*(1+sep)*image_xscale*sin(degtorad(langle))-(44*image_yscale+_ry)*cos(degtorad(langle)),
            image_xscale, image_yscale, langle, c_white, c_white, c_white, c_white, image_alpha);
    }
    for(i=13; i<26; i+=1) {
        _ry = random_range(-1, 1)*16;
        if (irandom_range(0, 50) == 0) continue;
        draw_sprite_general(sprite_rindex, image_rindex, 4*i, 0, 4, 88,
            rx+4*(i-13)*(1+sep)*image_xscale*cos(degtorad(rangle))-(44*image_yscale+_ry)*sin(degtorad(rangle)),
            ry-4*(i-13)*(1+sep)*image_xscale*sin(degtorad(rangle))-(44*image_yscale+_ry)*cos(degtorad(rangle)),
            image_xscale, image_yscale, rangle, c_white, c_white, c_white, c_white, image_alpha);
    }
} else {
	if (surface_exists(surf[surf_index])) {
		draw_surface(surf[surf_index], 0, 0);
	}
}