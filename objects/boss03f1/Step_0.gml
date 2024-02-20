d += 6;
if (layer_exists("Background"))
	layer_background_alpha(layer_background_get_id(layer_get_id("Background")), 0.7+0.3*sin(degtorad(d)));