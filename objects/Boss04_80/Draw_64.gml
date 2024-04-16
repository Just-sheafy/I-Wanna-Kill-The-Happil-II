var i, j, rx, ry;

if (patt <= 90) {
	if (surface_exists(surface)) {
		for(i=0; i<608/8; i+=1) {
			rx = random_range(-1, 1) * 10 * sqrt(patt/80);
			draw_surface_part(surface, 0, 8*i, 800, 8, rx, 8*i);
		}
	}
	
    for(i=0; i<608/64; i+=1) {
        for(j=0; j<800/64; j+=1) {
            rx = irandom_range(0, 31); ry = irandom_range(0, 31);
            draw_sprite_part_ext(sprBoss04_65, current_time+i+j, rx, ry, 32, 32, 64*j, 64*i, 2, 2, c_white, min(patt/80, 1));
        }
    }
    draw_set_color(c_white);
    draw_set_alpha(clamp((patt-80)/10, 0, 1));
    draw_rectangle(0, 0, 800, 608, false);
    draw_set_alpha(1);
} else if (patt <= 100) {
    draw_set_color(c_black);
    draw_rectangle(0, 0, 800, 608, false);
    draw_set_color(c_white);
    draw_circle_color(400, 304, 64*(patt-90)/10, c_white, c_black, false);
    draw_rectangle(0, sin(degtorad((patt-90)/10*90))*(304-4), 800, 608-sin(degtorad((patt-90)/10*90))*(304-4), false);
} else if (patt <= 115) {
    draw_set_color(c_black);
    draw_rectangle(0, 0, 800, 608, false);
    draw_set_color(c_white);
    draw_circle_color(400, 304, 64*(115-patt)/15, c_white, c_black, false);
    draw_rectangle(-200+(patt-100)/15*600, 304-(115-patt)/15*4, 1000-(patt-100)/15*600, 304+(115-patt)/15*4, false);
} else {
    draw_set_color(c_black);
    draw_rectangle(0, 0, 800, 608, false);
}