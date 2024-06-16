if(active)
{
	shader_set(shdInvert);
	shader_set_uniform_i(shdrLeft, leftInverted);
	shader_set_uniform_i(shdrRight, rightInverted);
	shader_set_uniform_f(shdrWidth, width);
	draw_set_alpha(layer_background_get_alpha(layId));
	draw_sprite(sprite, 0, layer_get_x(targetLayer), layer_get_y(targetLayer));
	draw_set_alpha(1);
	shader_reset();
}