draw_self();
if (world.shader_supported && shader_is_compiled(shdShield)) {
	shader_set(shdShield);
	shader_set_uniform_f(uTime, heal_time / 22);
	shader_set_uniform_f(uCoords,  x - rad*3.5, y-64 - rad*3.5, x + rad*3.5, y-64 + rad*3.5);

	draw_set_color(c_lime);
	draw_set_alpha(heal_alpha);
	draw_rectangle(x - rad*3.5, y-64 - rad*3.5, x + rad*3.5, y-64 + rad*3.5, false);
	draw_set_color(c_white);
	draw_set_alpha(1);

	shader_reset();
} else {
	draw_sprite_ext(sprBossB, floor(heal_time / 2), x, y-64, 3.5, 3.5, 0, c_lime, heal_alpha);
}