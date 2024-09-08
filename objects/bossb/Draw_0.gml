if (world.shader_supported && shader_is_compiled(shdShield)) {
	shader_set(shdShield);
	shader_set_uniform_f(uTime, t);
	shader_set_uniform_f(uCoords,  x - rad*image_xscale, y - rad*image_yscale,
		x + rad*image_xscale, y + rad*image_yscale);

	draw_set_color(col);
	draw_rectangle(x - rad*image_xscale, y - rad*image_yscale,
		x + rad*image_xscale, y + rad*image_yscale, false);
	draw_set_color(c_white);

	shader_reset();
} else {
	draw_self();
}