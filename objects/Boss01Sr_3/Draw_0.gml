if (surface_exists(surf)) {
	draw_surface_ext(surf, x+50*scale*sqrt(2)*cos(degtorad(angle+135)),
		y-50*scale*sqrt(2)*sin(degtorad(angle+135)),
		scale, scale, angle, c_white, 2-scale);
}